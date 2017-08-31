class AddAttachmentPictureToDatosproductos < ActiveRecord::Migration
  def self.up
    change_table :datosproductos do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :datosproductos, :picture
  end
end
