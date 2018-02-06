class CreateMatieres < ActiveRecord::Migration[5.0]
  def change
    create_table :matieres do |t|
      t.string :name

      t.timestamps
    end
  end
end
