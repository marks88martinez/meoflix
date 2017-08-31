class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.text :url_banner

      t.timestamps null: false
    end
  end
end
