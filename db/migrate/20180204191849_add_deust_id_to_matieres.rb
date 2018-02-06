class AddDeustIdToMatieres < ActiveRecord::Migration[5.0]
  def change
    add_column :matieres, :deust_id, :integer
  end
end
