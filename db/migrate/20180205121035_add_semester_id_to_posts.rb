class AddSemesterIdToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :semester_id, :integer
  end
end
