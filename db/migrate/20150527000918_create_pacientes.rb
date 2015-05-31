class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nome, :limit => 60
      t.string :cpf, :limit => 11
      t.string :endereco, :limit => 60
      t.string :end_numero, :limit => 6
      t.string :complemento, :limit => 15
      t.string :bairro, :limit => 45
      t.string :uf, :limit => 2
      t.integer :cidade
      t.string :cep, :limit => 8
      t.string :telefone, :limit => 11

      t.timestamps null: false
    end
  end
end
