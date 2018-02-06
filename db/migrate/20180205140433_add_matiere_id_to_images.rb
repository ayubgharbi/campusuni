class AddMatiereIdToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :matiere_id, :integer
  end
end
