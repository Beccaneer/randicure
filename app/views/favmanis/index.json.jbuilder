json.array!(@favmanis) do |favmani|
  json.extract! favmani, :id, :label, :numcol, :numaccents, :techid, :colourid, :accents
  json.url favmani_url(favmani, format: :json)
end
