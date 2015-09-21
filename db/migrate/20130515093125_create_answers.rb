class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.string :answer
      t.integer :candidate_id

      t.timestamps
    end
  end
end
