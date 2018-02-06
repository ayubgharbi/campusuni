class AddDeustIdToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :deust_id, :integer
  end
end
