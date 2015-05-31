class CreateSolicitacoes < ActiveRecord::Migration
  def change
    create_table :solicitacoes do |t|
      t.integer :instituicao_id
      t.integer :medico_id
      t.integer :clinica_id
      t.integer :paciente_id
      t.string :solicitante, :limit => 45
      t.date :data_emissao
      t.date :data_agendamento
      t.time :hora_agendamento
      t.string :status, :limit => 1
      t.text :descricao

      t.timestamps null: false
    end
  end
end
