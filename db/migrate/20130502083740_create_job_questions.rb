class CreateJobQuestions < ActiveRecord::Migration
  def change
    create_table :job_questions do |t|
      t.integer :question_id
      t.integer :job_id
      t.boolean :question_required, :default => false

      t.timestamps
    end
  end
end
