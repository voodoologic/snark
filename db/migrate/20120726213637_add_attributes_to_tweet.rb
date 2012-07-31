class AddAttributesToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :source, :string
    add_column :tweets, :tweet_id, :integer
    add_column :tweets, :to_user, :string
    add_column :tweets, :details, :string
  end
end
