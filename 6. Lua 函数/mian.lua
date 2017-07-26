--[[
在Lua中，函数是对语句和表达式进行抽象的主要方法。既可以用来处理一些特殊的工作，也可以用来计算一些值。
Lua 提供了许多的内建函数，你可以很方便的在程序中调用它们，如print()函数可以将传入的参数打印在控制台上。
Lua 函数主要有两种用途：
1.完成指定的任务，这种情况下函数作为调用语句使用；
2.计算并返回值，这种情况下函数作为赋值语句的表达式使用。
]]


-- 1. 函数定义
--[[ 函数返回两个值的最大值 --]]
function max(num1, num2)

   if (num1 > num2) then
      result = num1;
   else
      result = num2;
   end

   return result; 
end
-- 调用函数
print("两值比较最大值为 ",max(10,4))
print("两值比较最大值为 ",max(5,6))

print("======================================")

-- 2. 多返回值
--[[
Lua函数可以返回多个结果值，比如string.find，其返回匹配串"开始和结束的下标"（如果不存在匹配串返回nil）。
]]

s, e = string.find("www.runoob.com", "runoob")
print(s, e)

print("======================================")

-- 3. 可变参数
--[[
Lua函数可以接受可变数目的参数，和C语言类似在函数参数列表中使用三点（...) 表示函数有可变的参数。
Lua将函数的参数放在一个叫arg的表中，#arg 表示传入参数的个数。
]]

function average(...)
   result = 0
   local arg={...}
   for i,v in ipairs(arg) do
      result = result + v
   end
   print("总共传入 " .. #arg .. " 个数")
   return result/#arg
end

print("平均值为",average(10,5,3,4,5,6))