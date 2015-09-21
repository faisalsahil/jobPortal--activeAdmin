ActiveAdmin.register Job do
  
  config.sort_order = "title_desc"
  config.per_page = 10

  index do

    #column :id
    column :title
    column :department
    column :location
    column :salary
    column :description

    default_actions
  end

  show do
    attributes_table do
      row :title
      row :department
      row :category
      row :salary
      row :location
      row :description
    end
    render :partial=>"admin/jobs/show_job_questions.html.erb"
    active_admin_comments
  end

  controller do
    #layout 'active_admin', :only => [:new, :create]

    def new
      @job = Job.new
      Question.where(:job_id => ([0, nil])).each do |question|
        a = @job.job_questions.build
        a.question_id = question.id
      end
      render :layout => 'active_admin'
    end

    def create
      @job = Job.new(params[:job])
      if @job.save
        Question.where("job_id=0").each do |question|
          question.job = @job                                       # id's are set
          question.save
        end
        redirect_to admin_jobs_path, :notice => "Successfully created!"
      else
        arr = []
        @job.errors.full_messages.each do |error|
          arr << "#{error}\n\t"
        end
        redirect_to new_admin_job_path, :notice => @job.errors
      end

    end

    def edit
      @job = Job.find(params[:id])
      @job_questions = @job.job_questions
      @arr = []
      @index = 0

      @job_questions.each do |job_question|
        @arr << job_question.question.question_name
      end
      render :layout => 'active_admin'
    end

    def update
      @job = Job.find(params[:id])
      if @job.update_attributes(params[:job])
        redirect_to admin_jobs_path
      end
    end


  end

end
