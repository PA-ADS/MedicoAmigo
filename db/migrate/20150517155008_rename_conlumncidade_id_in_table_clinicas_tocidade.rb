class RenameConlumncidadeIdInTableClinicasTocidade < ActiveRecord::Migration
  def change
  	rename_column :clinicas, :cidade_id, :cidade
  end
end
