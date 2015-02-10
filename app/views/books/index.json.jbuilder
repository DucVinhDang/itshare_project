json.array!(@books) do |book|
  json.extract! book, :id, :name, :author_id, :category_id, :year, :star_rating, :download, :description, :image, :pages, :language, :file_size, :file_format
  json.url book_url(book, format: :json)
end
