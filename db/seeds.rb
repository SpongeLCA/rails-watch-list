# db/seeds.rb
# Clear existing data
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

# Create movies
movies = [
  { title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9 },
  { title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7 },
  { title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9 },
  { title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0 }
]

movies.each do |movie|
  Movie.create!(movie)
end

# Create lists
lists = [
  { name: "Classic movies", image_url: "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDJ8fGRyYW1hfGVufDB8fHx8MTYyODA2MzkzNg&ixlib=rb-1.2.1&q=80&w=1080" },
  { name: "Superhero", image_url: "https://images.unsplash.com/photo-1513628253939-010e64ac66cd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDN8fGNvbWVkeXxlbnwwfHx8fDE2MjgwNjM5MzY&ixlib=rb-1.2.1&q=80&w=1080" }
]

lists.each do |list|
  List.create!(list)
end

# Create bookmarks
Bookmark.create!(comment: "Amazing movie!", movie: Movie.first, list: List.first)
Bookmark.create!(comment: "Very inspiring.", movie: Movie.second, list: List.second)
Bookmark.create!(comment: "Heartbreaking story.", movie: Movie.third, list: List.first)
Bookmark.create!(comment: "Great heist movie.", movie: Movie.fourth, list: List.second)
