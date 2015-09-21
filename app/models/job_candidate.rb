class JobCandidate < ActiveRecord::Base
   attr_accessible :job_id, :candidate_id
   belongs_to :candidate
   belongs_to  :job
end
