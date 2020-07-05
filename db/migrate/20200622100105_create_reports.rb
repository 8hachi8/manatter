class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :impression
      t.references :job, foreign_key: true
      t.references :hour, foreign_key: true
      t.timestamps
    end
  end
end
