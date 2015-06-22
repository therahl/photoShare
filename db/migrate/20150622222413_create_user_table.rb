class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :user_tables do |t|
      t.string :given_name
      t.string :family_name
      t.string :username
    end
  end
end
