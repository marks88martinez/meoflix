class CreateDatosproductos < ActiveRecord::Migration
  def change
    create_table :datosproductos do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagem_url
      t.string :color_bg
      t.string :imagen_bg
      t.references :producto, index: true, foreign_key: true
      t.references :datosproducto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
