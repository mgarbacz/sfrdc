class CreateJobPdfs < ActiveRecord::Migration
  def change
    create_table :job_pdfs do |t|
      t.string :department

      t.timestamps
    end
  end
end
