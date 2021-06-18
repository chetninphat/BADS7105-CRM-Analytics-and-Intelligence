SELECT 
    VISIT_MONTH, 
    NEW_Customer, 
    REPEAT_Customer, 
    REACTIVATED_Customer,
    REPEAT_Customer - LAG(TOTAL, 1) OVER(ORDER BY VISIT_MONTH) AS CHURN_Customer
FROM
    (SELECT
        VISIT_MONTH, 
        COUNT(CASE WHEN STATUS = 'NEW' THEN CUST_CODE ELSE NULL END) AS NEW_Customer, 
        COUNT(CASE WHEN STATUS = 'REPEAT' THEN CUST_CODE ELSE NULL END) AS REPEAT_Customer, 
        COUNT(CASE WHEN STATUS = 'REACTIVATED' THEN CUST_CODE ELSE NULL END) AS REACTIVATED_Customer,
        COUNT(CUST_CODE) AS TOTAL
    FROM
        (SELECT 
            PREVIOUS_MONTH, VISIT_MONTH, CUST_CODE, 
            CASE
                WHEN DATE_DIFF(VISIT_MONTH, PREVIOUS_MONTH, MONTH) IS NULL THEN 'NEW'
                WHEN DATE_DIFF(VISIT_MONTH, PREVIOUS_MONTH, MONTH) = 1 THEN 'REPEAT'
                WHEN DATE_DIFF(VISIT_MONTH, PREVIOUS_MONTH, MONTH) > 1 THEN 'REACTIVATED'
            ELSE NULL END AS STATUS
        FROM
            (SELECT 
                LAG(VISIT_MONTH, 1)OVER(PARTITION BY CUST_CODE ORDER BY VISIT_MONTH) AS PREVIOUS_MONTH,
                VISIT_MONTH,
                CUST_CODE
            FROM
                (SELECT
                    DISTINCT DATE_TRUNC(PARSE_DATE('%Y%m%d',CAST(shop_date AS STRING)), MONTH)VISIT_MONTH, 
                    CUST_CODE
                FROM `silent-vim-308203.Maketnida.super` 
                WHERE 
                    CUST_CODE IS NOT NULL)))
        GROUP BY 
            VISIT_MONTH)
ORDER BY
    VISIT_MONTH;
