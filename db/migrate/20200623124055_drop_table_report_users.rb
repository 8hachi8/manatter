class DropTableReportUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :report_users
  end
end