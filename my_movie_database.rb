movies = {
  :Spiderman => 4,
  :Moana => 3,
  :Matrix => 4,  
  :The_lion_king => 4,
  :Big_hero_6 => 3
}

puts 'What do you want to do?'
puts "-- Type 'add' to add a movie"
puts "-- Type 'update' to update a movie"
puts "-- Type 'display' to display all the movies"
puts "-- Type 'delete' to delete a movie" 
choice = gets.chomp

case choice
  when "add"
    puts "What film would you like to add?"
      title = gets.chomp
      title.capitalize!
    puts "What is the rating of this film?"
      rating = gets.chomp
      
    if movies[title.gsub(" ","_").to_sym].nil?
      movies[title.gsub(" ","_").to_sym] = rating.to_i
      puts "#{title} was added"
    else
      puts "This movie already exist"
    end

  when "update"
    puts "What film would you like to update?"
    title = gets.chomp
    title.capitalize!
    
    if movies[title.gsub(" ","_").to_sym].nil?
      puts "Not found. Please add this movie before updating the rating"
    else
      puts "What is the new rating?"
      rating = gets.chomp
      movies[title.gsub(" ","_").to_sym] = rating.to_i
      puts "#{title}'s rating has been updated to #{rating}"
    end

  when "display"
    movies.each {|film, rating|
      puts "#{film}: #{rating}"
    }

  when "delete"
    puts "What film would you like to delete?"
    title = gets.chomp
    title.capitalize!

    if movies[title.gsub(" ","_").to_sym].nil?
      puts "Error. This movie does not exist"
    else
      movies.delete(title.gsub(" ","_").to_sym)
      puts "#{title} has been deleted"
    end

else
  puts "Error!"
end