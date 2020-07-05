class AddDueOnToReports < ActiveRecord::Migration[6.0]
  def change
    add_column :reports, :due_on, :string, null: false
  end
end