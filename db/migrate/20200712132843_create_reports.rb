class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.date :due_on, null: false
      t.string :job, null: false
      t.float :hour, null: false
      t.string :impression
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
