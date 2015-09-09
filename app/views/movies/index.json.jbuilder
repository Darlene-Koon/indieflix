json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :release_year, :description, :poster, :genre_id
  json.url movie_url(movie, format: :json)
end
