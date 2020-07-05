class ChangeDatatypeDateOfReports < ActiveRecord::Migration[6.0]
  def change
    change_column :reports, :date, :date, null: false
  end
end
