class CreateCreditos < ActiveRecord::Migration
  def change
    create_table :creditos do |t|
      t.integer :medico_id
      t.date :data_emissao
      t.integer :credito
      t.integer :saldo

      t.timestamps null: false
    end
  end
end
