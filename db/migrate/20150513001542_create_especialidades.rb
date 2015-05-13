class CreateEspecialidades < ActiveRecord::Migration
  def change
    create_table :especialidades do |t|
      t.string :descricao, :limit => 45

      t.timestamps null: false
    end
  end
end
