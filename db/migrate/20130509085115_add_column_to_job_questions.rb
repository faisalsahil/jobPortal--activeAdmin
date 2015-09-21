class AddColumnToJobQuestions < ActiveRecord::Migration
  def change
    add_column :job_questions, :question_mandatory,    :boolean
  end
end
