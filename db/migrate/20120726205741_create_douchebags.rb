class CreateDouchebags < ActiveRecord::Migration
  def change
    create_table :douchebags do |t|
      t.string :user_name
      t.string :avatar_image
      t.integer :user_id

      t.timestamps
    end
  end
end
