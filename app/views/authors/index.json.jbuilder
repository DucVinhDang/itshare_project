json.array!(@authors) do |author|
  json.extract! author, :id, :name, :nationality, :year, :follower, :description, :avatar
  json.url author_url(author, format: :json)
end
