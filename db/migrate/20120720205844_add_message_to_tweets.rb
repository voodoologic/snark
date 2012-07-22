class AddMessageToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :message, :string
  end
end
