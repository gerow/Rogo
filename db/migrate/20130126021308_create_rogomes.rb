class CreateRogomes < ActiveRecord::Migration
  def change
    create_table :rogomes do |t|
      t.references :user
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :rogomes, :user_id
  end
end
