# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
 user   = User.create!( [
            {provider: "twitter", uid: 7750542, nickname: "voodoologic", avatar_image: "http://placekitten.com/50/50", email: "example1@example.com"},
            {provider: "twitter", uid: 778, nickname: "_test_piggy", avatar_image: "http://placekitten.com/50/51", email: "funtimes@example.com"}
          ])
categories = Category.create!( [
                {name: "snark"},
                {name: "whoamamma"},
                {name: "hell"},
                {name: "sports"},
                {name: "#hatorade"}
              ])
 tweets = Tweet.create!( [
            {message: "@glennbeck, You are a bad person and you smell bad."},
            {message: "@glennbeck, I disdain you"},
            {message: "@glennbeck gave me herpes."},
            {message: "Where do you get off, @glennbeck?"},
            {message: "@glennbeck is the reason why the U.S. went to iraq"},
            {message: "Please go fuck yourself, @glennbeck?"},
            {message: "@glennbeck hey shitbag, You make everyone around you dumber."},
            {message: "@glennbeck, I follow you on twitter b/c I hate myself"},
            {message: "Please go fuck yourself, @glennbeck?"},
            {message: "@glennbeck, I can't believe they pay you that much and you suck so bad"},
            {message: "@glennbeck, what's up with you last performance bro?"},
            {message: "Please go fuck yourself, @glennbeck?"}
          ])
tweets.each_with_index do |tweet, index|
  category = Category.find((index+1) % categories.count + 1)
  user = User.find(Random.new().rand 1..User.last.id)
  tweet.update_attributes(:user => user, :category => category)
end
