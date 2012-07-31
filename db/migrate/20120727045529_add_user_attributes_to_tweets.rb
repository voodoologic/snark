class AddUserAttributesToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :sender_name, :string
    add_column :tweets, :sender_id, :integer
    add_column :tweets, :sender_avatar, :string
  end
end
