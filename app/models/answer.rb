class Answer < ActiveRecord::Base
  attr_accessible :answer, :candidate_id, :question_id

   belongs_to :question
  belongs_to :candidate
end
