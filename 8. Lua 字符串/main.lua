--[[
字符串或串(String)是由数字、字母、下划线组成的一串字符。
Lua 语言中字符串可以使用以下三种方式来表示：
单引号间的一串字符。
双引号间的一串字符。
双方括号间的一串字符。

转义字符表：http://www.runoob.com/lua/lua-strings.html
]]

string1 = "Lua"
print("\"字符串 1 是\"",string1)
string2 = 'runoob.com'
print("字符串 2 是",string2)

string3 = [["Lua 教程"]]
print("字符串 3 是",string3)

-- 1. 字符串操作
--[[
1	string.upper(argument):
字符串全部转为大写字母。
2	string.lower(argument):
字符串全部转为小写字母。
3	string.gsub(mainString,findString,replaceString,num)
在字符串中替换,mainString为要替换的字符串， findString 为被替换的字符，replaceString 要替换的字符，num 替换次数（可以忽略，则全部替换），如：
	> string.gsub("aaaa","a","z",3);
	zzza	3
4	string.find (str, substr, [init, [end\]\])
在一个指定的目标字符串中搜索指定的内容(第三个参数为索引),返回其具体位置。不存在则返回 nil。
	> string.find("Hello Lua user", "Lua", 1) 
	7	9
5	string.reverse(arg)
字符串反转
	> string.reverse("Lua")
	auL
6	string.format(...)
返回一个类似printf的格式化字符串
	> string.format("the value is:%d",4)
	the value is:4
7	string.char(arg) 和 string.byte(arg[,int])
char 将整型数字转成字符并连接， byte 转换字符为整数值(可以指定某个字符，默认第一个字符)。
	> string.char(97,98,99,100)
	abcd
	> string.byte("ABCD",4)
	68
	> string.byte("ABCD")
	65
	>
8	string.len(arg)
计算字符串长度。
	string.len("abc")
	3
9	string.rep(string, n)
返回字符串string的n个拷贝
	> string.rep("abcd",2)
	abcdabcd
10	..
链接两个字符串
	> print("www.runoob".."com")
	www.runoobcom
11	string.gmatch(str, pattern)
回一个迭代器函数，每一次调用这个函数，返回一个在字符串 str 找到的下一个符合 pattern 描述的子串。如果参数 pattern 描述的字符串没有找到，迭代函数返回nil。
	> for word in string.gmatch("Hello Lua user", "%a+") do print(word) end
	Hello
	Lua
	user
12	string.match(str, pattern, init)
string.match()只寻找源字串str中的第一个配对. 参数init可选, 指定搜寻过程的起点, 默认为1。 
在成功配对时, 函数将返回配对表达式中的所有捕获结果; 如果没有设置捕获标记, 则返回整个配对字符串. 当没有成功的配对时, 返回nil。
	> = string.match("I have 2 questions for you.", "%d+ %a+")
	2 questions

	> = string.format("%d, %q", string.match("I have 2 questions for you.", "(%d+) (%a+)"))
	2, "questions"

]]

local function NumToCN(num)
    local size = #tostring(num)
    local CN = ""
    local StrCN = {"一","二","三","四","五","六","七","八","九"}
    for i = 1 , size do
        CN = CN .. StrCN[tonumber(string.sub(tostring(num), i , i))]
    end
    return CN
end
print(NumToCN(56665))