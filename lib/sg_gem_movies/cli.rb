class CLI
  def run
    puts "Welcome to IMDB Openings!"
    puts "These are the movies opening this week:"
    puts " "
    puts ": ======================= :"
    puts " "
  
    Scraper.scrape_movies
    menu
    print_movies
  end
  
  def menu
  end
  
  def print_movies
    Movie.all.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie.title}"
  
end