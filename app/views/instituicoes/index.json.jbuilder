json.array!(@instituicoes) do |instituicao|
  json.extract! instituicao, :id, :nome, :cnpj, :responsavel, :endereco, :end_numero, :complemento, :bairro, :cidade, :uf, :cep, :telefone, :status, :usuario_id
  json.url instituicao_url(instituicao, format: :json)
end
