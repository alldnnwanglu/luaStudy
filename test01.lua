-- "Hello World" ����
print("Hello World") --> Hello World
print(10)	-->10
print(13+3) -->16
--this <--> that

-- ��һ�¿�ʼ
----1.1 �����(chunk)
a=1
b=a*2
print(a)
print(b)
a=1;b=a*2
a=1 b=a*2

----1.2 �ʷ�����

--dofile("lib1.lua") -- ���س����
--n = norm(3.4,1.0)
--print(twice(n))
----1.3 ȫ�ֱ���
print(b) --> nil
b = 10
print(b) --> 10
b = nil
print(b) --> nil
print(math.sin(3))
a = 30
-- �ڶ���������ֵ
print(type("Helo World")) --> string
print(type(10.4*3))  --> number
print(type(type)) -->function
print(type(print)) --function
print(type(true)) -->boolean
print(type(nil)) -->nil
print(type(type(X))) -->string

print(type(a))  --> nil (a ��δ��ʼ��)
a=10
print(type(a))  --> number
a = "a string!!"
print(type(a))  --> string
a = print      -- �ǺϷ���
print(type(a)) -->function
----2.1 nil���գ�
----2.2 boolean(����)
----2.3 number(����)
----2.4 string(�ַ���)
a = "one string"
b = string.gsub(a,"one","another") -- �޸��ַ�����һ����
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
-- print("Hello World" +1) ��������
print(10 .. 20) --> .. �ַ������ӷ���

--line = io.read() -- ��ȡһ��
--n = tonumber(line) -- ���Խ���ת��δһ������
--if n == nil then
--	error(line .. "is not a valid number")
--else
--	print(n*2)
--end

print(tostring(10) == "10") --> true
print(10 .. "" == "10")   --> true
a = "hello"
print(#a)  --> 5  # ���Ȳ���
print(#"good\0bye") --> 8

----2.5 table(��)
a = {}  --> ����һ�� table ,�����������ô洢�� a
k = "x"
a[k] = 10 --> ����Ŀ�� key="x" , value = 10
a[20] = "great" --> ����Ŀ key = 20 ,value = "great"
print(a["x"]) --> 10
k = 20
print(a[k]) --> "great"
a["x"] = a["x"] + 1 --> ������Ŀ"x"
print(a["x"]) --> 11

a = {}
a["x"] = 10
b = a          --> b �� a ������ͬһ�� table
print(b["x"]) --> 10
b["x"] = 20
print(a["x"])  --> 20
a = nil  --> ����ֻ�� b ��������table
b = nil  --> ��Ҳû�ж�table Ӧ����

a = {} --> �յ�table
-- ����1000 ������Ŀ
for i=1,1000 do a[i] = i*2 end
print(a[9]) -->18
a["x"] = 10
print(a["x"]) --> 10
print(a["y"]) --> nil

a.x = 10  --> ��ͬ��a["x"] = 10
print(a.x) --> ��ͬ�� print(a["x"])
print(a.y) --> ��ͬ�� print(a["y"])

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


print(a[#a]) -- ��ӡ�б� a �����һ��ֵ
a[#a] = nil -- ɾ�����һ��ֵ
a[#a+1] = v -- ��v ��ӵ��б�ĩβ


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
----2.6 function ����
----2.7 userdata (�Զ�������) �� thread(�߳�)
--�����±��ʽ
----3.1 ����������
-- a % b == a - floor(a/b)*b
x = math.pi
print(x - x%0.01) -->3.14
----3.2 ��ϵ������
a = {};a.x = 1;a.y = 0
b = {};b.x = 1;b.y = 0
c = a
---- 3.3 �߼�������
--�߼���·
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
---- 3.4 �ַ�������
print("Hello " .. "World") --> Hello World
print(0 .. 1) --> 01
a = "Hello"
print(a .. " World") --> Hello World
print(a) --> Hello
----3.5 ���ȼ�
---- 3.6 table ����ʽ
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

-- ��4�� ���
---- 4.1 ��ֵ���
--a = "hello" .. "world"
--t.n = t.n +1

x,y = y,x  -- ���� x �� y
a[i],a[j] = a[j],a[i] -- ���� a[i]�� a[j]
--a,b = a+1,b+1,b+2 -- ����b+2 �ᱻ����
a,b,c = 0
print(a,b,c) 
---- 4.2 �ֲ�����
j = 10  -- ȫ�ֱ���
local i = 1 -- �ֲ�����
x = 10
local i = 1 -- ������еľֲ�����

while i<=x do
	local x = i * 2 -- while ѭ���еľֲ�����
	print(x) --> 2,4,6,8, ...
	i = i + 1
end

if i > 20 then
	local x   -- then �еľֲ�����
	x = 20 
	print(x+2) -- ������Գɹ����ӡ22
else
	print(x)  --> 10 (ȫ�ֱ���)
end

local a,b = 1,10
if a<b then
	print(a) --> 1
	local a -- ������ʽ�� "=nil"
	print(a) --> nil
end
print(a,b) --> 1 10

local foo = foo

---- 4.3 ���ƽṹ
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

-- ��ӡ����ĵ�һ�в�Ϊ�յ�����
repeat
	line = io.read()
until line ~=""
print(line)

local sqr = x/2
repeat
	sqr = (sqr + x/sqr)/2
	local error = math.abs(sqr^2 - x)
until error < x/ 10000  -- �ڴ��Կ��Է��� error

---- ������ for( numeric for)

for i = 0,f(x) do print(i) end
for i = 10,1,-1 do print(i) end

for i=1,math.huge do
	if(0.3*i^3 - 20 * i^2 - 500 >= 0 )then
		print(i)
		break
	end
end

-- ��һ���б��в���һ��ֵ
local found = nil
for i=1,#a do
if a[i] < 0 then
	found = i  -- ����i��ֵ
	break
	end
end

---- 4.3.5 ���� for
for i,v in ipairs(a) do print(v) end

-- ��ӡtable t �����е�key
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

---- 4.4 break �� return
local i = 1
while a[i] do
	if a[i] == v then break end
	i = i + 1
end

--function foo()
--return    --<< �﷨����
-- ����һ������ return �������һ�����
--	do return end -- OK 
--end

-- ��5�� ����
function add(a)
	local sum = 0
	for i,v in ipairs(a) do
		sum = sum + v
	end
	return sum
end
---- 5.1 ���ط���ֵ
function maximun(a)
	local mi = 1 -- ���ֵ����
	local m = a[mi] -- ���ֵ
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

---- 5.2 �߳�����
function add (...)
	local s = 0
	for i,v in ipairs{...}do
		s = s + v
	end
	return s
end

print(add(3,4,10,25,12)) --> 54
---- 5.3 ����ʵ��

-- ��6�� ���뺯��
a = {p=print}
a.p("Hello World")
---- 6.1 closure �պϺ���
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

---- 6.2 ��ȫ�ֺ���

---- 6.3 ��ȷ��β����

-- ��7�� �������뷺��for
function values(t)
	local i = 0
	return function() i = i+1;return t[i] end
end

t = {10,20,30}
iter = values(t)  -- ����������
while true do
	local element = iter()  -- ���õ�����
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
---- 7.4 ���и���״̬�ĵ�����
---- 7.5 �����ĵ�����
-- �� 8 �� ���룬ִ�������
---- 8.1 ����
f = loadfile("foo.lua")

f = loadstring("local a = 10;print(a+20)")
f() --> 30
---- 8.2 C ����
local path = "/usr/local/lib/lua/5.1/socket.so"
local f = package.loadlib(path,"luaopen_socket")

---- 8.3 ����error)
print "enter a number"
n = io.read("number")
if not n then error("invalid input") end

print "enter a number"
n = assert(io.read("*number"),"invalid input")

n = io.read()
assert(tonumber(n),"invalid input:" .. n .. " is not a number")
---- 8.4 ���������쳣
--function foo()
--<һЩ����>
--if δԤ�ڵ����� then error() end
--<һЩ����>
--print(a[i]) -- Ǳ�ڵĴ���: a ���ܲ���һ�� table
--<һЩ����>
--end

--if pcall(foo) then
-- ��ִ��foo ʱû�з�������
-- <�������>
--else
-- foo ������һ������,��ȡ�ʵ�����Ϊ
--<������봦��>
--end

---- 8.5 ������Ϣ��׷�� (traceback)
print(debug.traceback())

-- �� 9 �� Эͬ����(coroutine)
co = coroutine.create(function() print("hi") end)
print(co)
-- ����״̬ ����(suspended),����(running),����(dead),����(normal)
print(coroutine.status(co))
coroutine.resume(co) -->hi  �ٴ�����Эͬ����
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
---- 9.2 �ܵ�(pipe) �������(filter)
-- ������ --������
function producer()
	while true do
		local x = io.read() -- �����µ�ֵ
		send(x)             -- ���͸�������
	end
end

function consumer()
	while true do
		local x = receive() -- �������߽���ֵ
		io.write(x,"\n")    -- �����µ�ֵ
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
		local x = io.read()  -- ������ֵ
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
			local x = receive(prod)  -- ��ȡ��ֵ
			x = string.format("%5d %s",line,x)
			send(x)            -- ����ֵ���͸�������
		end
	end)
end

function consumer(prod)
	while true do
		local x = receive(prod)   -- ��ȡ��ֵ
		io.write(x,"\n")          -- ������ֵ
	end
end

p = producer()
f = filter(p)
consumer(f)
---- 9.3 ��Эͬ����ʵ�ֵ�����
function permgen(a,n)
	n = n or #a  -- Ĭ�� n Ϊ a �Ĵ�С
	if n <= 1 then
		printResult(a)
	else
		for i = 1,n do
			-- ����i��Ԫ�طŵ������ĩβ
			a[n],a[i] = a[i],a[n]
			-- ��������Ԫ�ص�����
			permgen(a,n-1)
			-- �ָ��� i ��Ԫ��
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

---- 9.4 ������ʽ��(non-preemptive) ���߳�
-- �� 10 �� ������ʾ��
---- 10.1 ��������
--> �� 2 ����
-- �� 11 �� ���ݽṹ
---- 11.1 ����
a = {}  -- �½�һ������
for i=1,1000 do
	a[i] = 0
end

print(#a) --> 1000
---- 11.2 �������ά����
mt = {}
for i=1,N do      -- ��������
	mt[i] = {}
	for i=1,M do  -- ����һ������
		mt[i][j] = 0
	end
end
---- 11.3 ����
list = nil
list = { next = list,value = v}

---- 11.4 ������˫�����

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
	list[first] = nil -- ���������ռ�
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
---- 11.5 �����������飨bag)

---- 11.6 ͼ

-- �� 12 �� �����ļ���־�����
---- 12.1 �����ļ�
---- 12.2 ���л�
-- �� 13 �� Ԫ����Ԫ����

-- �� 14 �� ����
-- �� 15 �� ģ�����
---- 15.1 require ����
local m = require "io"
m.write("hello world\n")

-- �� 16 �����������

Account = {balance = 0}
function Account.withdraw(v)
	Account.balance = Account.balance - v
end


-- �� 17 ��������
---- 17.1 ���ú���
---- 17.2 ��������
---- 17.3 �ع� table ��Ĭ��ֵ
-- �� 3 ����
-- �� 18 ����ѧ��
-- �� 19 �� table ��
---- 19.1 �����ɾ��
t = {}
for line in io.lines() do
	table.insert(t,line)
end
print(#t) --> ���������
---- 19.2 ����
a = {}
for n in pairs(lines) do a[#a+1] = n end
table.sort(a)
for i,n in ipairs(a) do print(n) end

function pairsByKeys(t,f)
	local a = {}
	for n in pairs(t) do a[#a+1] = n end
	table.sort(a,f)
	local i = 0       -- ����������
	return function() -- ����������
		i=i+1
		return a[i],t[a[i]]
	end
end


---- 19.3 ����
function rconcat(l)
	if type(l) ~="table" then return l end
	local res = {}
	for i = 1,#l do
		res[i] = rconcat(l[i])
	end
	
	return table.concat(res)
end

-- �� 20 �� �ַ�����
---- 20.1 �����ַ�������
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
----20.2 ģʽƥ�亯��
s = "hello world"
i,j = string.find(s,"hello")
print(i,j) -->1 5
print(string.sub(s,i,j)) -->Hello
print(string.find(s,"word")) --> 7 11
i,j = string.find(s,"l")
print(i,j)  --> 3 3
print(string.find(s,"lll")) --> nil

-- �� 21 �� I/O ��
---- 21.1 �� I/O ģ��
---- 21.2 ���� I/O ģ��
---- 21.22 �������ļ�
---- 21.2.3 �����ļ�����

-- �� 22 �� ����ϵͳ��
---- 22.1 ����ʱ��
---- 22.2 ����ϵͳ����
function createDir(dirname)
	os.execute("mkdir" .. dirname)
end

-- �� 23 �� ���Կ�

---- 23.1.2 ���ʷǾֲ��ı���
debug.getlocal(2,i) -- ���Ծֲ�����

debug.getinfo(2,"f") -- ���ԡ��Ǿֲ��ı�����

---- 23.1.3 ��������Эͬ����
co = coroutine.create(function()
end)

print(debug.traceback(co))
---- 23.2 ����
debug.sethook(print,"l")

---- 23.3 �������� profile
-----���Ӻ���
local function hook()
	local f = debug.getinfo(2,"f").fuc
	if Counters[f] == nil then -- 'f' �ǵ�һ�α�������
		Counters[f] = 1
		Name[f] = debug.getinfo(2,"Sn")
	else  -- ����������ֵ
		Counters[f] = Counters[f] + 1
	end
end

%lua profile main-prog

local f= assert(loadfile(arg[1]))
debug.sethook(hook,"c")   -- Ϊ�������ô򿪹���
f()                       -- ����
debug.sethook() 		  -- �رչ���

-- �� 4 ����
-- �� 24 �� C API ����
-- �� 25 �� ��չӦ�ó���
-- �� 26 �� �� Lua ���� C 
-- �� 27 �� ��д C �����ļ���
-- �� 28 �� �û��Զ�������
-- �� 29 �� ������Դ
-- �� 30 �� �̺߳�״̬
-- �� 31 �� �ڴ����




