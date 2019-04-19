local r = string.byte('adsfasfg')
print(r)

local b = string.byte('assafafaf', 2, 5)
print(b)

local a, b, c = string.byte("adaffsfsf", 2, 5 )
print(a, b, c)

local e = string.char(100)
print(e)

local d = string.upper("sdsadsad")
print(d)

local e = string.lower("SSFFFF")
print(e)


local f = string.gsub('dsadsadsad', 'd', 'F')
print(f)

local g = string.reverse('maomoa')
print(g) 


print("==================================-")
print(string.find('dsaddsadds', 'dd' )) 


local h = string.format("this is a test for num:%d", 5555)
print(h)






array = {"Google", "Runoob"}

function elementIterator (collection)
   local index = 0
   local count = #collection
   -- 闭包函数
   return function ()
      index = index + 1
      if index <= count then
         --  返回迭代器的当前元素
         return collection[index]
      end
   end
end

for element in elementIterator(array)
do
   print(element)
end
