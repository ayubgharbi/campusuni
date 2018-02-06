class AddMatiereIdToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :matiere_id, :integer
  end
end
