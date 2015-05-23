class CreateMunicipios < ActiveRecord::Migration
  def change
    create_table :municipios do |t|
      t.string :cod_ibge, :limit => 5
      t.string :nome, :limit => 35
      t.string :uf, :limit => 2

      t.timestamps null: false
    end
  end
end
