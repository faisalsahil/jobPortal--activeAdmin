class Candidate < ActiveRecord::Base
  attr_accessible :cgpa, :degree_name, :email, :institution, :name, :resume, :answers_attributes
  attr_accessor :answers_attributes
  validates_presence_of :name, :email
  has_many :job_candidates
  has_many :jobs, :through => :job_candidates
  has_many :answers


  accepts_nested_attributes_for :answers
  mount_uploader :resume, ResumeUploader
end
