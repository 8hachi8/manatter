class ChangeDataDateToReports < ActiveRecord::Migration[6.0]
  def change
    change_column :reports, :date, :date
  end
end
