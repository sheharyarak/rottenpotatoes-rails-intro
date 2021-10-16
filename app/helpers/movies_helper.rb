module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end
  def custom_movies_path(sort_by, ratings_to_show)
    ratings = Hash[ratings_to_show.collect { |r| [r, "1"]}]
    return movies_path({sort_by: sort_by, ratings: ratings})
  end
  def sorted_by(sorted_by, title)
    if !sorted_by.nil? and sorted_by == title
      return "hilite bg-warning"
    end
    return ""
  end
      
end
