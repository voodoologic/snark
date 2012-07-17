class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.integer :uid
      t.string :nickname
      t.string :avatar_image

      t.timestamps

    end
  end
end
