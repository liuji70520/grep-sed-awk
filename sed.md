把 Jon 的名字改成 Jonathan。

删除头三行。

显示 5-10 行。

删除包含 Lane 的行。

显示所有生日在 November-December 之间的行。

把三个星号 (***) 添加到以 Fred 开头的行。

用 JOSE HAS RETIRED 取代包含 Jose 的行。

把 Popeye 的生日改成 11/14/46。

删除所有空白行。
答案：
```bash
sed -i "s#Jon#Jonathan#g" file
sed -i '1,3d' file
sed -n "5,10p" file
sed '/Lane/d' file
sed -n "/.*:1[1,2]\//p" file
sed -i "s#^Fred#***Fred#g" file
sed -i "s#.*Jose.*#JOSE HAS RETIRED#g" file
cat datafile | grep Popeye | sed -e 's/3\/19\/35/11\/14\/46/'
sed "/^$/d" file 或者 sed '/^\s*$/d' file
```





