class AddDownloadLinkToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :download_link, :string
  end
end
