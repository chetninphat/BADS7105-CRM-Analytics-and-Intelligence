## Association Rules (Algorithm Apriori)
__________________________________________________________
RESULTS
วัดประสิทธิภาพมี 2 ส่วน Confidence เละ ift 

Confidence คือการแสดงความเชื่อมั่นของความสัมพันธ์ของ itemset 2 อย่าง
คือ LHS(Left Hand Side) แสดงรูปแบบของ itemset ด้านซ้าย
และ RHS (Right Hand Side) แสดงรูปแบบของ itemset ด้านขวา

ift คือค่าที่บ่งบอกว่าการเกิดรูปแบบ LHS และ RHS มีความสัมพันธ์กันแค่ไหน
โดยถ้าค่า lift เป็น 1 แสดงว่ารูปแบบ LHS และ RHS ไม่ขึ้นต่อกัน (independent)

1. itemset ขนาด 1 ชิ้น(LHS) เเละ ขนาด 1 ชิ้น(RHS)
มาเป็น5อันดับเเรก โดยอับดับ 1 คือเนื่้อวากิลกับเนื้อย่างคือถ้าเลือกเนื้อวากิลก็จะเลือกเนื้อย่าง 96.77% มีความสัมพันธ์กันมาก
![](https://github.com/chetninphat/BADS7105-CRM-Analytics-and-Intelligence/blob/main/Homework%2007/size1-1.png)

2. itemset ขนาด 1 ชิ้น(LHS) เเละ ขนาด 2 ชิ้น(RHS)
มาเป็น5อันดับเเรก โดยอับดับ 1 คือเนื่้อวากิลกับ เนื้อย่าง, หมูแดดเดียว คือถ้าเลือกเนื้อวากิลก็จะเลือกเนื้อย่างเเละเลือกหมูแดดเดียว 87.10% มีความสัมพันธ์กันมาก
![](https://github.com/chetninphat/BADS7105-CRM-Analytics-and-Intelligence/blob/main/Homework%2007/size1-2.png)

2. itemset ขนาด 2 ชิ้น(LHS) เเละ ขนาด 1 ชิ้น(RHS)
มาเป็น5อันดับเเรก โดยอับดับ 1 คือSoftware ถูกลิขสิทธิ์,เนื้อย่าง กับ หมูแดดเดียว คือถ้าเลือกSoftware ถูกลิขสิทธิ์ กับ เนื้อย่าง เเละ เลือกหมูแดดเดียว 92.86%  มีความสัมพันธ์กันมาก
![](https://github.com/chetninphat/BADS7105-CRM-Analytics-and-Intelligence/blob/main/Homework%2007/size2-1.png)

2. itemset ขนาด 2 ชิ้น(LHS) เเละ ขนาด 2 ชิ้น(RHS)
มาเป็น5อันดับเเรก โดยอับดับ 1 คือเม็ดมะม่วงหิมพานต์, เนื้อวากิล กับ เนื้อย่าง, หมูแดดเดียว คือถ้าเลือกเม็ดมะม่วงหิมพานต์เเละเนื้อวากิล ก็จะเลือกเนื้อย่างและหมูแดดเดียว 90.00%  มีความสัมพันธ์กันมาก
![](https://github.com/chetninphat/BADS7105-CRM-Analytics-and-Intelligence/blob/main/Homework%2007/size2-2.png)
