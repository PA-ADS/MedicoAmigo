class AddClinicaIdToAgendas < ActiveRecord::Migration
  def change
    add_column :agendas, :clinica_id, :integer
  end
end
