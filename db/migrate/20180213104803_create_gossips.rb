class CreateGossips < ActiveRecord::Migration[5.1]
  def change
    create_table :gossips do |t|
      t.text :content
      t.integer :creator_id
      t.timestamps
    end
  end
end
