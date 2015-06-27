json.array!(@manicures) do |manicure|
  json.extract! manicure, :id, :numcol, :numaccents, :techid, :colourid, :accents
  json.url manicure_url(manicure, format: :json)
end
