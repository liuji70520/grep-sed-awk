显示所有包含 "San" 的行。

显示所有以 "J" 开始的人名所在的行。

显示所有以 "700" 结尾的行。

显示所有不包括 "834" 的行。

显示所有生日在 "December" 的行。

显示所有电话号码的区号为 "486" 的行。#题目有误，可跳过

显示所有这样的行：它包含一个大写字母，后跟四个小写字母，一个冒号，一个空格，和一个大写字母。

显示姓以 "K" 或 "k" 开头的行。

显示工资为六位数的行，并在前面加行号。

显示包括 "Lincoln" 或 "lincoln" 的行，并且 grep 对大小写不敏感。
答案：
```
grep -n "San" file
grep -n "^J" file
grep -n "700$" file
grep -nv "834" file
grep -n ".*:12/" file
grep -n ':498\' file
grep -n '[A-Z][a-z][a-z][a-z][a-z]: [A-Z]' file
grep -n "^[k,K]" file
grep -n '^[0-9]\{6,\}' file
grep -in 'lincoln' file
```
