json.array!(@teches) do |tech|
  json.extract! tech, :id, :title, :mincol, :maxcol, :minaccents, :maxaccents
  json.url tech_url(tech, format: :json)
end
