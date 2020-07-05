class ChangeDataJobToJobs < ActiveRecord::Migration[6.0]
  def change
    change_column :jobs, :job, :string
  end
end
