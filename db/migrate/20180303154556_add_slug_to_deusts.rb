class AddSlugToDeusts < ActiveRecord::Migration[5.0]
  def change
    add_column :deusts, :slug, :string
    add_index :deusts, :slug, unique: true
  end
end
