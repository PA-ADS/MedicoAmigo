json.array!(@clinicas) do |clinica|
  json.extract! clinica, :id, :medico_id, :nome, :telefone, :endereco, :end_numero, :end_complemento, :bairro, :cidade_id, :uf, :cep
  json.url clinica_url(clinica, format: :json)
end
