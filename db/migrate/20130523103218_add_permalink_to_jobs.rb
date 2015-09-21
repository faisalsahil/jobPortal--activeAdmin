class AddPermalinkToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :permalink, :string
  end
end
