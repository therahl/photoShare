class CreateAlbumTable < ActiveRecord::Migration
  def change
    create_table :album_tables do |t|
      t.string :title
      t.text :description
    end
  end
end
