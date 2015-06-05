class ChangeStatusFromSolicitacoes < ActiveRecord::Migration
  def change
  	change_column :solicitacoes, :status, :string, :limit => 2
  end
end
