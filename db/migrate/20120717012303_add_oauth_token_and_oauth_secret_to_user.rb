class AddOauthTokenAndOauthSecretToUser < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.string :oauth_token, default: ""
      t.string :oauth_secret, default: ""

    end
  end
end
