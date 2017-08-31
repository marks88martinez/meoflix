class AddAttachmentPictureToTrabajos < ActiveRecord::Migration
  def self.up
    change_table :trabajos do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :trabajos, :picture
  end
end
