#iteration

arr = [1,2,3,5,8,13]
fruits = ["banana","apple","cherry"]
mixed = [-5,"Canada", 3.141592]

#traditional style
for i in arr
  puts "current val is #{i}"
end

#ruby style

fruits.each do |fruit|
  puts "current fruit happens to be #{fruit}"
end

#let's pretend we are 1337 js masters

mixed.each{|i| puts "#{i} is magical"}

#for each in ruby

elements = []
(0..12).each do |i|
  puts "pushing #{i} to list"
  elements.push(i)
end

elements.each {|i| puts "current element: #{i}"}
