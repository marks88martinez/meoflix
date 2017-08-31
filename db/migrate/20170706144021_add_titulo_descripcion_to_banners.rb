class AddTituloDescripcionToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :titulo, :string
    add_column :banners, :descripcion, :text
  end
end
