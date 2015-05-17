class AddPasswordHashToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :password_hash, :string
    add_column :usuarios, :password_salt, :string
  end
end
