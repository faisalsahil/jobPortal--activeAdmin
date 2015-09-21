class QuestionsController < ApplicationController

  def new
    @question = Question.new
    respond_to do |format|
      format.js
    end
  end

  def create
    if  params[:job_id].present?
      puts "888888888888888888888888888888 in create 8888888888888888888888888"
      @job = Job.find(params[:job_id])
      @question = @job.questions.create!(params[:question])
      @question.job = @job
      @question.save!

    else
      @question = Question.new(params[:question])
      @question.job_id = 0
      @question.save!
    end
    respond_to do |format|
      format.js
    end
  end

  def customquestion

  end

end

