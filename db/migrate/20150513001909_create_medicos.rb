class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nome, :limit => 60
      t.string :cpf, :limit => 11
      t.string :crm, :limit => 10
      t.string :crm_uf, :limit => 2
      t.string :email, :limit => 60
      t.string :telefone, :limit => 11
      t.integer :especialidade_id

      t.timestamps null: false
    end
  end
end
