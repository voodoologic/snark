class Tweet < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  has_reputation :votes, source: :user, aggregated_by: :sum
end
