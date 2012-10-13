require './channel.rb' #inkludim vnishnij fail
file = File.read("./rss.xml") #schityvaem soderzhanie faila
test = Channel.new(file)
p test

array = Array.new
array << "1"
array << "2"
array << "3"
array << "4"
p array