class Job < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title
  attr_accessible :category,:job_questions_attributes,:job_question, :questions_attributes, :department, :description, :location, :salary, :title
  attr_accessor :job_questions_attributes,:job_question, :questions_attributes

  has_many :custom_questions, :class_name => :Question, :foreign_key => :job_id

  has_many :job_questions, :dependent => :destroy
  has_many :job_candidates
  has_many :questions, :through => :job_questions
  has_many :candidates, :through => :job_candidates

  # validations
  validates_presence_of  :salary, :location, :department, :description, :category, :on=>:create
  validates_uniqueness_of :title, :on=>:create
  accepts_nested_attributes_for :questions
  accepts_nested_attributes_for :job_questions


  def to_param
    " #{title}".parameterize
    #"#{id}-#{title.gsub(/\W/, '-').downcase}"
    #permalink
  end

end
