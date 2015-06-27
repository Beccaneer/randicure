json.array!(@hatemanis) do |hatemani|
  json.extract! hatemani, :id, :techid, :colourid
  json.url hatemani_url(hatemani, format: :json)
end
