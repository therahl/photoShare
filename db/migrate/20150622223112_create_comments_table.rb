class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :description
    end
  end
end
