-- 两个减号是单行注释

--[[
 多行注释
 多行注释
]]

print("hello world")

-- 1. 标识符

--[[
Lua 表示符用于定义一个变量，函数获取其他用户定义的项。标示符以一个字母 A 到 Z 或 a 到 z 或下划线 _ 开头后加上0个或多个字母，下划线，数字（0到9）。
最好不要使用下划线加大写字母的标示符，因为Lua的保留字也是这样的。
Lua 不允许使用特殊字符如 @, $, 和 % 来定义标示符。 Lua 是一个区分大小写的编程语言。因此在 Lua 中 Runoob 与 runoob 是两个不同的标示符。以下列出了一些正确的标示符：
]]

-- 2. 关键词
--[[

and	break	do	else
elseif	end	false	for
function	if	in	local
nil	not	or	repeat
return	then	true	until
while

]]

-- 3. 全局变量
--[[
在默认情况下，变量总是认为是全局的。
全局变量不需要声明，给一个变量赋值后即创建了这个全局变量，访问一个没有初始化的全局变量也不会出错，只不过得到的结果是：nil。

> print(b)
nil
> b=10
> print(b)
10
>

如果你想删除一个全局变量，只需要将变量赋值为nil。

b = nil
print(b)      --> nil

这样变量b就好像从没被使用过一样。换句话说, 当且仅当一个变量不等于nil时，这个变量即存在。

]]


