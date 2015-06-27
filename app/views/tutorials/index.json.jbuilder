json.array!(@tutorials) do |tutorial|
  json.extract! tutorial, :id, :title, :author, :url, :image
  json.url tutorial_url(tutorial, format: :json)
end
