显示所有电话号码。
显示 Dan 的电话号码。
显示 Susan 的名字和电话号码。
显示所有以 D 开头的姓。
显示所有以一个 C 或 E 开头的名。
显示所有只有四个字符的名。
显示所有区号为 916 的人名。
显示 Mike 的捐款。显示每个值时都有以 $ 开头。如 $250$100$175。
显示姓，其后跟一个逗号和名，如 Jody, Savage。
答案：

awk -F "[ :]" '{print $4}' file
awk -F "[ :]" 'NR==7 {print $4}' file
awk -F "[ :]" 'NR==3 {print $1,$4}' file 或者 awk -F ":" '/^Susan/{print $1,$2}' file
awk -F "[ :]" '{print $2}' file | awk '/^D/{print $0}'
awk -F "[ ]" '/^[C,E]/{print $1}' file
awk -F "[ ]" '{if (length($1)==4) print $1}' file
awk -F ":" '/\[916\]/{print $1}' file
awk -F "[ :]" '/^Mike/ {print "$"$5,"$"$6,"$"$7}' file
awk -F "[ :]" '{print $1","$2}' file 或者 awk -F "[ :]" '{print $1",",$2}' file
