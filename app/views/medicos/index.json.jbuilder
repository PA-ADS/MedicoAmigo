json.array!(@medicos) do |medico|
  json.extract! medico, :id, :nome, :cpf, :crm, :crm_uf, :email, :telefone, :especialidade_id
  json.url medico_url(medico, format: :json)
end
