class CreatePhotoTable < ActiveRecord::Migration
  def change
    create_table :photo_tables do |t|
      t.string :title
      t.text :description
      t.boolean :featured
    end
  end
end
