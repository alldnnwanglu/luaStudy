-- "Hello World" 程序
print("Hello World") --> Hello World
print(10)	-->10
print(13+3) -->16
--this <--> that

-- 第一章开始
----1.1 程序块(chunk)
a=1
b=a*2
print(a)
print(b)
a=1;b=a*2
a=1 b=a*2

----1.2 词法规则

--dofile("lib1.lua") -- 加载程序库
--n = norm(3.4,1.0)
--print(twice(n))
----1.3 全局变量
print(b) --> nil
b = 10
print(b) --> 10
b = nil
print(b) --> nil
print(math.sin(3))
a = 30
-- 第二章类型与值
print(type("Helo World")) --> string
print(type(10.4*3))  --> number
print(type(type)) -->function
print(type(print)) --function
print(type(true)) -->boolean
print(type(nil)) -->nil
print(type(type(X))) -->string

print(type(a))  --> nil (a 尚未初始化)
a=10
print(type(a))  --> number
a = "a string!!"
print(type(a))  --> string
a = print      -- 是合法的
print(type(a)) -->function
----2.1 nil（空）
----2.2 boolean(布尔)
----2.3 number(数字)
----2.4 string(字符串)
a = "one string"
b = string.gsub(a,"one","another") -- 修改字符串的一部分
print(a)  --> one string
print(b)  --> another string
a = "a line"
b = 'another line'
print("one line\nnext\n\"in quotes\",'in quotes'")

print('a backslash inside quotes:\'\\\'')
print("a simpler way: '\\'")

page =[[
<html>
<head>
<title>An HTML Page</title>
</head>
<body>
<a href="http://www.lua.org">lua</a>
</body>
</html>
]]

--write(page)

print("10"+1)  --> 1
print("10+1")  --> 10 + 1
print("-5.3e-18" * "2")
-- print("Hello World" +1) 错误类型
print(10 .. 20) --> .. 字符串连接符号

--line = io.read() -- 读取一行
--n = tonumber(line) -- 尝试将他转换未一个数字
--if n == nil then
--	error(line .. "is not a valid number")
--else
--	print(n*2)
--end

print(tostring(10) == "10") --> true
print(10 .. "" == "10")   --> true
a = "hello"
print(#a)  --> 5  # 长度操作
print(#"good\0bye") --> 8

----2.5 table(表)
a = {}  --> 创建一个 table ,并将他的引用存储到 a
k = "x"
a[k] = 10 --> 新条目， key="x" , value = 10
a[20] = "great" --> 新条目 key = 20 ,value = "great"
print(a["x"]) --> 10
k = 20
print(a[k]) --> "great"
a["x"] = a["x"] + 1 --> 递增条目"x"
print(a["x"]) --> 11

a = {}
a["x"] = 10
b = a          --> b 与 a 引用了同一个 table
print(b["x"]) --> 10
b["x"] = 20
print(a["x"])  --> 20
a = nil  --> 现在只有 b 还在引用table
b = nil  --> 再也没有对table 应用了

a = {} --> 空的table
-- 创建1000 个新条目
for i=1,1000 do a[i] = i*2 end
print(a[9]) -->18
a["x"] = 10
print(a["x"]) --> 10
print(a["y"]) --> nil

a.x = 10  --> 等同于a["x"] = 10
print(a.x) --> 等同于 print(a["x"])
print(a.y) --> 等同于 print(a["y"])

a = {}
x = "y"
a[x] = 10
print(a[x])  --> 10
print(a.x)  --> nil
print(a.y)  --> 10

a = {}
for i=1,10 do
	a[i] = io.read()
end


print(a[#a]) -- 打印列表 a 的最后一个值
a[#a] = nil -- 删除最后一个值
a[#a+1] = v -- 将v 添加到列表末尾


a = {}
for i = 1,10 do
	a[#a+1] = io.read()
end

a={}
a[10000] = 1
print(table.maxn(a)) --> 10000

i=10;j="10";k="+10"
a ={}
a[i] = "one value"
a[j] = "another value"
a[k] = "yet another value"
print(a[j]) --> another value
print(a[k]) --> yet another value
print(a[tonumber(j)]) --> one value 
print(a[tonumber(k)]) --> one value
----2.6 function 函数
----2.7 userdata (自定义类型) 和 thread(线程)
--第三章表达式
----3.1 算术操作符
-- a % b == a - floor(a/b)*b
x = math.pi
print(x - x%0.01) -->3.14
----3.2 关系操作符
a = {};a.x = 1;a.y = 0
b = {};b.x = 1;b.y = 0
c = a
---- 3.3 逻辑操作符
--逻辑短路
print(4 and 5) -->5 
print(nil and 13) -->nil
print(false and 13) --> false
print(4 or 5) --> 4
print(false or 5) -->5

if not x then x = v end 
--max = ( x > y) and x or y
print(not nil) --> true
print(not false) --> true
print(not 0)  -->false
print(not not nil) --> false
---- 3.4 字符串连接
print("Hello " .. "World") --> Hello World
print(0 .. 1) --> 01
a = "Hello"
print(a .. " World") --> Hello World
print(a) --> Hello
----3.5 优先级
---- 3.6 table 构造式
days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}
print(days[4]) --> Wednesday
a = { x= 10,y=20}
w = {x = 0,y = 0,label = "console"}
x = {math.sin(0),math.sin(1),math.sin(2)}
w[1] = "another field"
x.f = w
print(w["x"]) --> 0
print(w[1]) --> "another field"
print(x.f[1]) --> "another field"
w.x = nil 
list = nil

--for line in io.lines() do
--	list = { next = list,value = line}
--end

--local l = list
--while l do
--	print(l.value)
--	l = l.next
--end

polyline = { coloe = "blue",thickness = 2,npoints = 4,
{x=0,y=0},
{x=0,y=0},
{x=-10,y=0},
{x=-10,y=1},
{x=0,y=1}
}

print(polyline[2].x) -->-10
print(polyline[4].y) --> 1

opnames = {["+"] = "add",["-"] = "sub",
			["*"] = "mul",["/"] = "div"}
			
i = 20; s = "-"
a = {[i+0] = s,[i+1] = s..s,[i+2] = s..s..s}

print(opnames[s])  -->sub
print(a[22]) --> ---

-- 第4章 语句
---- 4.1 赋值语句
--a = "hello" .. "world"
--t.n = t.n +1

x,y = y,x  -- 交换 x 与 y
a[i],a[j] = a[j],a[i] -- 交换 a[i]与 a[j]
--a,b = a+1,b+1,b+2 -- 其中b+2 会被忽略
a,b,c = 0
print(a,b,c) 
---- 4.2 局部变量
j = 10  -- 全局变量
local i = 1 -- 局部变量
x = 10
local i = 1 -- 程序块中的局部变量

while i<=x do
	local x = i * 2 -- while 循环中的局部变量
	print(x) --> 2,4,6,8, ...
	i = i + 1
end

if i > 20 then
	local x   -- then 中的局部变量
	x = 20 
	print(x+2) -- 如果测试成功会打印22
else
	print(x)  --> 10 (全局变量)
end

local a,b = 1,10
if a<b then
	print(a) --> 1
	local a -- 具有隐式的 "=nil"
	print(a) --> nil
end
print(a,b) --> 1 10

local foo = foo

---- 4.3 控制结构
if a < 0 then a = 0 end

if a < b then return a else return b end

if line > MAXLINES then
	showpage()
	line = 0
end

if op == "+" then
	r = a + b 
elseif op == "_" then
	r = a - b
elseif op == "*" then
	r = a * b
elseif op == "/" then
	r = a / b 
else
	error("invalid operation")
end


local i = 1
while a[i] do
	print(a[i])
	i=i+1
end

-- 打印输入的第一行不为空的内容
repeat
	line = io.read()
until line ~=""
print(line)

local sqr = x/2
repeat
	sqr = (sqr + x/sqr)/2
	local error = math.abs(sqr^2 - x)
until error < x/ 10000  -- 在此仍可以访问 error

---- 数字型 for( numeric for)

for i = 0,f(x) do print(i) end
for i = 10,1,-1 do print(i) end

for i=1,math.huge do
	if(0.3*i^3 - 20 * i^2 - 500 >= 0 )then
		print(i)
		break
	end
end

-- 在一个列表中查找一个值
local found = nil
for i=1,#a do
if a[i] < 0 then
	found = i  -- 包含i的值
	break
	end
end

---- 4.3.5 泛型 for
for i,v in ipairs(a) do print(v) end

-- 打印table t 中所有的key
for k in ipairs(t) do print(k) end

revDays = {["Sunday"] = 1,["Monday"] = 2,
["Tuesday"] = 3,["Wednesday"] = 4,
["Friday"] = 6,["Saturday"] = 7}
x = "Tuesday"
print(revDays[x])
revDays = {}
for k,v in pairs(days) do
	revDays[v] = k
end

---- 4.4 break 与 return
local i = 1
while a[i] do
	if a[i] == v then break end
	i = i + 1
end

--function foo()
--return    --<< 语法错误
-- 在下一个块中 return 就是最后一条语句
--	do return end -- OK 
--end

-- 第5章 函数
function add(a)
	local sum = 0
	for i,v in ipairs(a) do
		sum = sum + v
	end
	return sum
end
---- 5.1 多重返回值
function maximun(a)
	local mi = 1 -- 最大值索引
	local m = a[mi] -- 最大值
	for i,val in ipairs(a) do
		if val < m then
			mi = i;m = val
		end
	end
	return m,mi
end

print(maximun({8,10,23,15,5})) -->23. 3

f = string.find
a = {"hello","ll"}

function unpack(t,i)
	i = i or 1
	if t[i] then
		return t[i],unpack(t,i+1)
	end
end

---- 5.2 边长参数
function add (...)
	local s = 0
	for i,v in ipairs{...}do
		s = s + v
	end
	return s
end

print(add(3,4,10,25,12)) --> 54
---- 5.3 具名实参

-- 第6章 深入函数
a = {p=print}
a.p("Hello World")
---- 6.1 closure 闭合函数
function newCounter()
	local i = 0
	return function()
		i = i+i 
		return i
	end
end

c1 = newCounter();
print(c1) -->1
print(c2)  -->2

---- 6.2 非全局函数

---- 6.3 正确的尾调用

-- 第7章 迭代器与泛型for
function values(t)
	local i = 0
	return function() i = i+1;return t[i] end
end

t = {10,20,30}
iter = values(t)  -- 创建迭代器
while true do
	local element = iter()  -- 调用迭代器
	if element == nil then break end
	print(element)
end

t = {10,20,30}
for element in values(t) do
	print(element)
end

for word in allwords() do
	print(word)
end
---- 7.4 具有复杂状态的迭代器
---- 7.5 真正的迭代器
-- 第 8 章 编译，执行与错误
---- 8.1 编译
f = loadfile("foo.lua")

f = loadstring("local a = 10;print(a+20)")
f() --> 30
---- 8.2 C 代码
local path = "/usr/local/lib/lua/5.1/socket.so"
local f = package.loadlib(path,"luaopen_socket")

---- 8.3 错误（error)
print "enter a number"
n = io.read("number")
if not n then error("invalid input") end

print "enter a number"
n = assert(io.read("*number"),"invalid input")

n = io.read()
assert(tonumber(n),"invalid input:" .. n .. " is not a number")
---- 8.4 错误处理与异常
--function foo()
--<一些代码>
--if 未预期的条件 then error() end
--<一些代码>
--print(a[i]) -- 潜在的错误: a 可能不是一个 table
--<一些代码>
--end

--if pcall(foo) then
-- 在执行foo 时没有发生错误
-- <常规代码>
--else
-- foo 引发的一个错误,采取适当的行为
--<错误代码处理>
--end

---- 8.5 错误消息与追溯 (traceback)
print(debug.traceback())

-- 第 9 章 协同程序(coroutine)
co = coroutine.create(function() print("hi") end)
print(co)
-- 几种状态 挂起(suspended),运行(running),死亡(dead),正常(normal)
print(coroutine.status(co))
coroutine.resume(co) -->hi  再次启动协同程序
co = coroutine.create(function()
	for i=1,10 do
		print("co",i)
		coroutine.yield()
	end
end)

coroutine.resume(co) --> co 1
print(coroutine.status(co)) --> suspended
coroutine.resume(co) --> co 2
coroutine.resume(co) --> co 3
coroutine.resume(co)  --> co 4
---- 9.2 管道(pipe) 与过滤器(filter)
-- 生产者 --消费者
function producer()
	while true do
		local x = io.read() -- 生产新的值
		send(x)             -- 发送给消费者
	end
end

function consumer()
	while true do
		local x = receive() -- 从生产者接受值
		io.write(x,"\n")    -- 消费新的值
	end
end

function receive()
	local status,value = coroutine.resume(producer)
	return value
end

function send(x)
	coroutine.yield(x)
end

producer = coroutine.create(
function()
	while true do
		local x = io.read()  -- 产生新值
		send(x)
	end
end)

function receive(prod)
	local status,value =coroutine.resume(prod)
	return value
end

function send(x)
	coroutine.yield(x)
end

function producer()
	return coroutine.create(function()
		while true do
			local x = io.read()
			send(x)
		end
	end)
end

function filter(prod)
	return coroutine.create(function()
		for line = 1,math.huge do
			local x = receive(prod)  -- 获取新值
			x = string.format("%5d %s",line,x)
			send(x)            -- 将新值发送给消费者
		end
	end)
end

function consumer(prod)
	while true do
		local x = receive(prod)   -- 获取新值
		io.write(x,"\n")          -- 消费新值
	end
end

p = producer()
f = filter(p)
consumer(f)
---- 9.3 以协同程序实现迭代器
function permgen(a,n)
	n = n or #a  -- 默认 n 为 a 的大小
	if n <= 1 then
		printResult(a)
	else
		for i = 1,n do
			-- 将第i个元素放到数组的末尾
			a[n],a[i] = a[i],a[n]
			-- 生成其余元素的排列
			permgen(a,n-1)
			-- 恢复第 i 个元素
			a[n],a[i] = a[i],a[n]
		end
	end	
end

function printResult(a)
	for i = 1,#a do
		io.write(a[i],"")
	end
	io.write("\n")
end

---- 9.4 非抢先式的(non-preemptive) 多线程
-- 第 10 章 完整的示例
---- 10.1 数据描述
--> 第 2 部分
-- 第 11 章 数据结构
---- 11.1 数组
a = {}  -- 新建一个数组
for i=1,1000 do
	a[i] = 0
end

print(#a) --> 1000
---- 11.2 矩阵与多维数组
mt = {}
for i=1,N do      -- 创建矩阵
	mt[i] = {}
	for i=1,M do  -- 创建一个新行
		mt[i][j] = 0
	end
end
---- 11.3 链表
list = nil
list = { next = list,value = v}

---- 11.4 队列与双向队列

function ListNew()
	return {fist = 0 ,last = -1}
end

List = {}
function List.new()
	return {first = 0,last = -1}
end

function List.pushfirst(list,value)
	local first = list.first - 1
	list.first = first
	list[first] = value
end

function List.pushlast(list,value)
	local last = list.last + 1
	list.last = last
	list[last] = value
end

function List.popfirst(list)
	local first = list.first
	if first > list.last then error("list is empry") end
	local value = list[first]
	list[first] = nil -- 允许垃圾收集
	list.first = first +1
	return value
end

function List.poplast(list)
	local last = list.last
	if list.first > last then error("list is empty") end
	local value = list[last]
	list[last]=nil
	list.last = last - 1
	return value
end
---- 11.5 集合与无序组（bag)

---- 11.6 图

-- 第 12 章 数据文件与持久性能
---- 12.1 数据文件
---- 12.2 串行化
-- 第 13 章 元表与元方法

-- 第 14 章 环境
-- 第 15 章 模块与包
---- 15.1 require 函数
local m = require "io"
m.write("hello world\n")

-- 第 16 章面向对象编程

Account = {balance = 0}
function Account.withdraw(v)
	Account.balance = Account.balance - v
end


-- 第 17 章弱引用
---- 17.1 备用函数
---- 17.2 对象属性
---- 17.3 回顾 table 的默认值
-- 第 3 部分
-- 第 18 章数学库
-- 第 19 章 table 库
---- 19.1 插入和删除
t = {}
for line in io.lines() do
	table.insert(t,line)
end
print(#t) --> 读入的行数
---- 19.2 排序
a = {}
for n in pairs(lines) do a[#a+1] = n end
table.sort(a)
for i,n in ipairs(a) do print(n) end

function pairsByKeys(t,f)
	local a = {}
	for n in pairs(t) do a[#a+1] = n end
	table.sort(a,f)
	local i = 0       -- 迭代器变量
	return function() -- 迭代器函数
		i=i+1
		return a[i],t[a[i]]
	end
end


---- 19.3 连接
function rconcat(l)
	if type(l) ~="table" then return l end
	local res = {}
	for i = 1,#l do
		res[i] = rconcat(l[i])
	end
	
	return table.concat(res)
end

-- 第 20 章 字符串库
---- 20.1 基础字符串函数
print(string.char(97)) -->a
i = 99 ;print(string.char(i,i+1,i+2)) -->cde
print(string.byte("abc")) --> 97
print(string.byte("abc",2)) -->98
print(string.byte("abc"),-1) --> 99

print(string.byte("abc",1,2)) -->97 98

print(string.format("pi = %.4f",math.pi)) --> pi = 3.1416
d = 5;m=11;y = 1990
print(string.format("%02d/%02d/%02d",d,m,y)) --> 05/11/1990
tag,title = "hi","a title"
print(string.format("<%s>%s</%s>",tag,title,tag) --> <h1>a title</h1>
----20.2 模式匹配函数
s = "hello world"
i,j = string.find(s,"hello")
print(i,j) -->1 5
print(string.sub(s,i,j)) -->Hello
print(string.find(s,"word")) --> 7 11
i,j = string.find(s,"l")
print(i,j)  --> 3 3
print(string.find(s,"lll")) --> nil

-- 第 21 章 I/O 库
---- 21.1 简单 I/O 模型
---- 21.2 完整 I/O 模型
---- 21.22 二进制文件
---- 21.2.3 其他文件操作

-- 第 22 章 操作系统库
---- 22.1 日期时间
---- 22.2 其他系统调用
function createDir(dirname)
	os.execute("mkdir" .. dirname)
end

-- 第 23 章 调试库

---- 23.1.2 访问非局部的变量
debug.getlocal(2,i) -- 尝试局部变量

debug.getinfo(2,"f") -- 尝试“非局部的变量”

---- 23.1.3 访问其他协同程序
co = coroutine.create(function()
end)

print(debug.traceback(co))
---- 23.2 钩子
debug.sethook(print,"l")

---- 23.3 性能剖析 profile
-----钩子函数
local function hook()
	local f = debug.getinfo(2,"f").fuc
	if Counters[f] == nil then -- 'f' 是第一次被调用吗？
		Counters[f] = 1
		Name[f] = debug.getinfo(2,"Sn")
	else  -- 仅递增计数值
		Counters[f] = Counters[f] + 1
	end
end

%lua profile main-prog

local f= assert(loadfile(arg[1]))
debug.sethook(hook,"c")   -- 为后续调用打开钩子
f()                       -- 运行
debug.sethook() 		  -- 关闭钩子

-- 第 4 部分
-- 第 24 章 C API 概述
-- 第 25 章 扩展应用程序
-- 第 26 章 从 Lua 调用 C 
-- 第 27 章 编写 C 函数的计数
-- 第 28 章 用户自定义类型
-- 第 29 章 管理资源
-- 第 30 章 线程和状态
-- 第 31 章 内存管理




