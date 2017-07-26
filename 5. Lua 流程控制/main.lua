--[[
Lua 编程语言流程控制语句通过程序设定一个或多个条件语句来设定。在条件为 true 时执行指定程序代码，在条件为 false 时执行其他指定代码。
控制结构的条件表达式结果可以是任何值，Lua认为false和nil为假，true和非nil为真。要注意的是Lua中 0 为 true!!!
]]

--[ 0 为 true ]
if(0)
then
    print("0 为 true")
end

--[[
Lua 提供了以下控制结构语句：

语句	描述
if 语句	if 语句 由一个布尔表达式作为条件判断，其后紧跟其他语句组成。
if...else 语句	if 语句 可以与 else 语句搭配使用, 在 if 条件表达式为 false 时执行 else 语句代码。
if 嵌套语句	你可以在if 或 else if中使用一个或多个 if 或 else if 语句 。

]]

--[ 定义变量 --]
a = 100;
--[ 检查条件 --]
if( a < 20 )
then
   --[ if 条件为 true 时执行该语句块 --]
   print("a 小于 20" )
else
   --[ if 条件为 false 时执行该语句块 --]
   print("a 大于 20" )
end
print("a 的值为 :", a)

print("===========================================")

--[ 定义变量 --]
a = 100

--[ 检查布尔条件 --]
if( a == 10 )
then
   --[ 如果条件为 true 打印以下信息 --]
   print("a 的值为 10" )
elseif( a == 20 )
then   
   --[ if else if 条件为 true 时打印以下信息 --]
   print("a 的值为 20" )
elseif( a == 30 )
then
   --[ if else if condition 条件为 true 时打印以下信息 --]
   print("a 的值为 30" )
else
   --[ 以上条件语句没有一个为 true 时打印以下信息 --]
   print("没有匹配 a 的值" )
end
print("a 的真实值为: ", a )