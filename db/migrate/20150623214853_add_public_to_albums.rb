class AddPublicToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :public, :boolean, :default => true
  end
end
