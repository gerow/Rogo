class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.string :display_name
      t.string :bio
      t.string :twitter

      t.timestamps
    end
  end
end
