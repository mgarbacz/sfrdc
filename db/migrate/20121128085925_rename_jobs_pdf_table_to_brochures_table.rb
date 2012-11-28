class RenameJobsPdfTableToBrochuresTable < ActiveRecord::Migration
  def change
    rename_table :job_pdfs, :brochures
  end
end
