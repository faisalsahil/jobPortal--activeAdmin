class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
  end

  def new
    @candidate = Candidate.new
    @job = Job.find(params[:job_id])
    @questions = @job.job_questions
    #@answers = []
    @questions.each do |question|
      @candidate.answers.build(:question_id => question.question_id)
    end

  end

  def create
    #render :json=>params
    #@candidate = Candidate.find(params[:candidate])
    @job = Job.find(params[:job_id])
    @questions = @job.job_questions

    if c = @job.candidates.create!(params[:candidate])
      puts "88888888888888888888888888888888888888888888888888888888888"
      puts c
      puts c.email
      UserMailer.registration_confirmation(c).deliver
      redirect_to jobs_path, :notice => 'You have successfully apply.Information sent through email.'
    end
  end

  def download
    candidate = Candidate.find(params[:id])
    send_file candidate.resume.path, :type => 'application/pdf', :filename => candidate.resume_url

  end


end
