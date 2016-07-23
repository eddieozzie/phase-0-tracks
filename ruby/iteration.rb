# write method takes a block
books = {
  book_1: "read",
  book_2: "not read",
  book_3: "read"
}

books.each do |book, status|
  if status == "read"
    p "This book has been read already."
  else
    p "This book has not read yet."
  end
end

movies = {
	finding_dory: 5,
	movie_2: 7,
	movie_3: 9
}

actors = ["Ellen Paige", "Hugh Jackman", "Patrick Stewart"]

#presenting the original rating of each movie 
movies.each do |movie, rating|
	puts "The movie #{movie.to_s} has a rating of #{rating}"
end

#presenting the original actor list
actors.each do |actor|
	puts "The actor #{actor} has an index of #{actors.index(actor)}"
end

#jumble the actors' names 
actors.map! do |actor|
	actor.reverse
end

#presenting the final rating of each movie 
movies.each do |movie, rating|
	puts "The movie #{movie.to_s} has a rating of #{rating}"
end

#presenting the changed actor list
actors.each do |actor|
	puts "The actor #{actor} has an index of #{actors.index(actor)}"
end






