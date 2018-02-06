class AddPostIdToPdfs < ActiveRecord::Migration[5.0]
  def change
    add_column :pdfs, :post_id, :integer
  end
end
