json.array!(@solicitacoes) do |solicitacao|
  json.extract! solicitacao, :id, :instituicao_id, :medico_id, :clinica_id, :paciente_id, :solicitante, :data_emissao, :data_agendamento, :hora_agendamento, :status, :descricao
  json.url solicitacao_url(solicitacao, format: :json)
end
