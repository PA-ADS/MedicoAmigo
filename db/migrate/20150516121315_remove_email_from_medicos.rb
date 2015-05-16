class RemoveEmailFromMedicos < ActiveRecord::Migration
  def change
    remove_column :medicos, :email, :string
  end
end
