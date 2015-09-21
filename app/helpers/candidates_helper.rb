module CandidatesHelper

  def preview_or_default_image(resume)
    case resume.type
      when 'jpg', 'jpeg' # , 'png', ...
        resume.image_url
      when 'doc', 'docx'
        'path/to/doc/default_image.png'
      when 'xls', 'xlsx'
        'path/to/xls/default_image.png'
      when 'pdf'
        'path/to/pdf/default_image.png'
    end
  end

end
