class AddUsuarioIdToMedicos < ActiveRecord::Migration
  def change
    add_column :medicos, :usuario_id, :integer
    add_index :medicos, :usuario_id, :unique => true
  end
end
