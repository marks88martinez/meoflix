class AddAttachmentPictureToInfos < ActiveRecord::Migration
  def self.up
    change_table :infos do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :infos, :picture
  end
end
