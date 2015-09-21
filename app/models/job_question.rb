class JobQuestion < ActiveRecord::Base
  attr_accessible :job_id, :question_id, :question_required, :question_mandatory
  belongs_to :question
  belongs_to :job
end
