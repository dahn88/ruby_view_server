require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

y = 24
template2 = ERB.new "The value of x + y is: <%= x+y %>"
puts template2.result(binding)

a = "boy"
template3 = ERB.new "Hey there said the <%= a %>"
puts template3.result(binding)

dates = ['Mon', 'Tues', 'Wed']
dates2 = ['Fri', 'Sat', 'Sun']
template4 = ERB.new "I will be available on <%= dates %> and 
will not be available <%= dates2 %>"
puts template4.result(binding)