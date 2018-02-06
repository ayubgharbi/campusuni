class AddDeustIdToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :deust_id, :integer
  end
end
