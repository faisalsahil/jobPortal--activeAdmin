class Question < ActiveRecord::Base
  attr_accessible :question_name, :question_type, :job_id

  belongs_to :job, :class_name => :Job
  has_many :job_questions
  has_many :jobs, :through => :job_questions
  has_many :answers
  accepts_nested_attributes_for :job_questions
end
