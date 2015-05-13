class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :email, :limit => 60
      t.string :password, :limit => 12
      t.string :tipo, :limit => 1

      t.index :email, unique: true

      t.timestamps null: false
    end
  end
end
