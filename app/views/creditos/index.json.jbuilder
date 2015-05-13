json.array!(@creditos) do |credito|
  json.extract! credito, :id, :medico_id, :data_emissao, :credito, :saldo
  json.url credito_url(credito, format: :json)
end
