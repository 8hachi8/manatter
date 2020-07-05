class RenameDateColumnToReports < ActiveRecord::Migration[6.0]
  def change
    rename_column :reports, :date, :due_on
  end
end
