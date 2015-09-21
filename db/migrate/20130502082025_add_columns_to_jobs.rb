class AddColumnsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :department,  :string
    add_column :jobs, :category,    :string
    add_column :jobs, :salary,      :integer
    add_column :jobs, :description, :text
  end
end
