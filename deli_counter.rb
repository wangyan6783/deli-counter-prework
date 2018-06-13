def line(list)
  if list.size != 0
    message = "The line is currently: "
    list.each_with_index {|name, i| message += "#{i+1}. #{name} "}
    puts message.chop
  else
    puts "The line is currently empty."
  end
end

def take_a_number(list, name)
  list << name
  position = list.size
  puts "Welcome, #{name}. You are number #{position} in line."
end

def now_serving(list)
  if list.size != 0
    name = list.shift
    puts "Currently serving #{name}."
  else
    puts "There is nobody waiting to be served!"
  end
end
