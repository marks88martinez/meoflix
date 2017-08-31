class AddATituloADescripcionToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :a_titulo, :string
    add_column :banners, :a_descripcion, :text
  end
end
