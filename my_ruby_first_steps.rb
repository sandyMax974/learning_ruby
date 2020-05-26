=begin 
Write a method that will tell you if a number
is odd or even. end=

def even?(num)
  if num % 2 === 0
    puts "Even"
  else
    puts "Odd"
  end
end


=begin Iterate over an array of numbers to display
the square of each number in the array end=

arr = [2,4,3,7,12,45,21,11]
arr.each {|num| 
 puts num**2
}


=begin Write a ‘greeter’ method that takes a name as an input
such that I could write “greeter(“Dana”) and it would
display “Hello Dana! How are you today?” end=

def greeter(name)
  puts "Hello #{name}! How are you today?"
end


=begin Write a method that takes one argument and returns
the square of that number. end=

def square(num)
  return num**2
end


=begin Write a method called ‘shout’ that takes a String
as an input and returns that String in capital letters. end=

def shout(str)
  return str.upcase!
end


=begin Iterate over an array of numbers and only
display even numbers end=

arr = [1,3,14,23,22,13,2,5,6,78]
arr.each {|x|
  if x % 2 === 0
  puts x
  end
}


=begin Create a hash containing your 5 best friends, with
each person’s name as the key and their age as the
value. Iterate over that array to display 5 examples
that look like:  “Dana is 28 years old”
end=

my_friends = Hash.new

my_friends["camila"] = 29
my_friends["kat"] = 29
my_friends["hannah"] = 30

my_friends.each {|name, age|
  puts "#{name} is #{age} years old"
}

