class RemoveDueOnToReports < ActiveRecord::Migration[6.0]
  def change
    remove_column :reports, :due_on, :date
  end
end
