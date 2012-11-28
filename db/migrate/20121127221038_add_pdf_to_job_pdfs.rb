class AddPdfToJobPdfs < ActiveRecord::Migration
  def change
    add_attachment :job_pdfs, :pdf
  end
end
