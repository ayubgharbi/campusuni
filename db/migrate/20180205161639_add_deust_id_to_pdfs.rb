class AddDeustIdToPdfs < ActiveRecord::Migration[5.0]
  def change
    add_column :pdfs, :deust_id, :integer
  end
end
