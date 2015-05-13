json.array!(@especialidades) do |especialidade|
  json.extract! especialidade, :id, :descricao
  json.url especialidade_url(especialidade, format: :json)
end
