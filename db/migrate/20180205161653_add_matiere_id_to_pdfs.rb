class AddMatiereIdToPdfs < ActiveRecord::Migration[5.0]
  def change
    add_column :pdfs, :matiere_id, :integer
  end
end
