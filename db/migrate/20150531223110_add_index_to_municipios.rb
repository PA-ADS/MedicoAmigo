class AddIndexToMunicipios < ActiveRecord::Migration
  def change
  	add_index :municipios, :uf
  end
end