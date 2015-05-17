class CreateClinicas < ActiveRecord::Migration
  def change
    create_table :clinicas do |t|
      t.integer :medico_id
      t.string :nome, :limit => 45
      t.string :telefone, :limit => 11
      t.string :endereco, :limit => 60
      t.string :end_numero, :limit => 6
      t.string :end_complemento, :limit => 15
      t.string :bairro, :limit => 45
      t.string :cidade_id, :limit => 45
      t.string :uf, :limit => 2
      t.string :cep, :limit => 8

      t.timestamps null: false
    end
  end
end
