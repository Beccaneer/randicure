json.array!(@colours) do |colour|
  json.extract! colour, :id, :brandname, :productname, :colourname, :hexcode
  json.url colour_url(colour, format: :json)
end
