json.array!(@books) do |book|
  json.extract! book, :id, :name, :description, :price, :author_id, :img_url
  json.url book_url(book, format: :json)
end
