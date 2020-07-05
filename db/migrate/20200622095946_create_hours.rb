class CreateHours < ActiveRecord::Migration[6.0]
  def change
    create_table :hours do |t|
      t.float :hour, null: false
      t.timestamps
    end
  end
end
