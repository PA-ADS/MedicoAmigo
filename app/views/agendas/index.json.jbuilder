json.array!(@agendas) do |agenda|
  json.extract! agenda, :id, :medico_id, :data_emissao, :quantidade, :saldo
  json.url agenda_url(agenda, format: :json)
end
