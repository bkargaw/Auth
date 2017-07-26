class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :link_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
