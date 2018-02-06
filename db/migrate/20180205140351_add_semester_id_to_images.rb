class AddSemesterIdToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :semester_id, :integer
  end
end
