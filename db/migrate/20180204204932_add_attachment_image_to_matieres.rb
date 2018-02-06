class AddAttachmentImageToMatieres < ActiveRecord::Migration
  def self.up
    change_table :matieres do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :matieres, :image
  end
end
