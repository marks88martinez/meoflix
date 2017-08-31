class AddLinkToIdiomas < ActiveRecord::Migration
  def change
    add_column :idiomas, :link, :text
  end
end
