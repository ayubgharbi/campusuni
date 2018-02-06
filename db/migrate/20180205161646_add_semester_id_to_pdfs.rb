class AddSemesterIdToPdfs < ActiveRecord::Migration[5.0]
  def change
    add_column :pdfs, :semester_id, :integer
  end
end
