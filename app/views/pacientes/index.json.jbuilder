json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :nome, :cpf, :endereco, :end_numero, :complemento, :bairro, :uf, :cidade, :cep, :telefone
  json.url paciente_url(paciente, format: :json)
end
