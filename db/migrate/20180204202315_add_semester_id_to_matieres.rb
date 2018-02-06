class AddSemesterIdToMatieres < ActiveRecord::Migration[5.0]
  def change
    add_column :matieres, :semester_id, :integer
  end
end
