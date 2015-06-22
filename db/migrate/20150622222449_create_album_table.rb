class CreateAlbumTable < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
    end
  end
end
