ActiveAdmin.register Candidate do


  index do
    #column :id
    column :name
    column :degree_name
    column :institution
    column :email
    column :cgpa
    #column :created_at
    #column :updated_at
    column :resume
    column "download Resume" do |candidate|
      link_to 'Download',download_candidate_path(candidate), :format => 'pdf'

    end
    default_actions
  end


#  show do |ad|
#
#    attributes_table do
#
#      row :id
#      row :name
#      row :degree_name
#      row :institution
#      row :email
#      row :cgpa
#      row :created_at
#      row :updated_at
#
#      row :resume do
#        pdf_filename = File.join(Rails.root, "/public/uploads/candidate/resume")
#        #send_file(pdf_filename, :filename => ad.resume.url, :disposition => 'inline', :type => "application/pdf")
#      end
#    end
#    render :partial=>"admin/candidates/show_candidate_answers.html.erb"
#    active_admin_comments
#  end
  controller do
    def show
      @candidate = Candidate.find(params[:id])
      render :layout => 'active_admin'

    end
  end


end
