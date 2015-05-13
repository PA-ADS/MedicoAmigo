json.array!(@estados) do |estado|
  json.extract! estado, :id, :uf, :nome
  json.url estado_url(estado, format: :json)
end
