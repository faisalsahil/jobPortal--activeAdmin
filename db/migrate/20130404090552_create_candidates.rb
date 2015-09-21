class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :degree_name
      t.string :institution
      t.string :email
      t.decimal :cgpa

      t.timestamps
    end
  end
end
