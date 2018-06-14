def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  array.each do |x|
    array.delete(x)
    array.unshift(badge_maker(x))
  end
  array.reverse
end

def assign_rooms(array)
  number = 1
  array.each do |name|
    array.delete(name)
    array.unshift("Hello, #{name}! You'll be assigned to room #{number}!")
    number += 1
  end
  array.reverse
end

def printer
    puts batch_badge_creator
    puts assign_rooms
end
