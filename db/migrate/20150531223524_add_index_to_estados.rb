class AddIndexToEstados < ActiveRecord::Migration
  def change
  	add_index :estados, :uf
  end
end
