class CreateUserUpvotes < ActiveRecord::Migration
  def change
    create_table :user_upvotes do |t|
      t.references :user
      t.references :question

      t.timestamps
    end
    add_index :user_upvotes, :user_id
    add_index :user_upvotes, :question_id
  end
end
