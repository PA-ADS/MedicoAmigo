class RemoveColumnsFromSolicitacoes < ActiveRecord::Migration
  def change
	remove_column :solicitacoes, :clinica_id, :integer
	remove_column :solicitacoes, :medico_id, :integer
	add_column :solicitacoes, :agenda_id, :integer

	add_index :solicitacoes, :agenda_id
  end
end
