class AddDateToReports < ActiveRecord::Migration[6.0]
  def change
    add_column :reports, :date, :date
  end
end
