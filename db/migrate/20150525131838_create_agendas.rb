class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.integer :medico_id
      t.date :data_emissao
      t.integer :quantidade
      t.integer :saldo

      t.timestamps null: false
    end
  end
end
