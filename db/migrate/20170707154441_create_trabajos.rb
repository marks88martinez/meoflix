class CreateTrabajos < ActiveRecord::Migration
  def change
    create_table :trabajos do |t|
      t.string :titulo
      t.text :descripcion
      t.string :icon
      t.string :animate

      t.timestamps null: false
    end
  end
end
