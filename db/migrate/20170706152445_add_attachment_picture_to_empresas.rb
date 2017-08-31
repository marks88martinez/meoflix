class AddAttachmentPictureToEmpresas < ActiveRecord::Migration
  def self.up
    change_table :empresas do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :empresas, :picture
  end
end
