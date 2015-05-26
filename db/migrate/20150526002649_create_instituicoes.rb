class CreateInstituicoes < ActiveRecord::Migration
  def change
    create_table :instituicoes do |t|
      t.string :nome, :limit => 60
      t.string :cnpj, :limit => 14
      t.string :responsavel, :limit => 60
      t.string :endereco, :limit => 60
      t.string :end_numero, :limit => 6
      t.string :complemento, :limit => 15
      t.string :bairro, :limit => 45
      t.integer :cidade, :limit => 11
      t.string :uf, :limit => 2
      t.string :cep, :limit => 8
      t.string :telefone, :limit => 11
      t.string :status, :limit => 1
      t.integer :usuario_id, :limit => 11


      t.timestamps null: false
    end
  end
end
