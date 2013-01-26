class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :user
      t.text :content
      t.references :rogome

      t.timestamps
    end
    add_index :questions, :user_id
    add_index :questions, :rogome_id
  end
end
