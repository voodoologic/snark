class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable

  has_many :tweets
  has_one :category

  #voting 
  has_many :evaluations, class_name: "RSEvaluation", as: :source
  has_reputation :votes, source: {reputation: :votes, of: :hatorade}, aggregated_by: :sum

  # Setup accessible (or protected) attributes for your model

  attr_accessible :email, :password, :password_confirmation, :remember_me ,:avatar_image, :nickname, :provider, :uid
  attr_reader :twitter

  def self.from_omniauth(auth)
    user = where(auth.slice(:provider, :uid)).first || create_from_omniauth(auth)
    user.oauth_token  = auth["credentials"]["token"]
    user.oauth_secret = auth["credentials"]["secret"]
    user.save!
    user
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth.provider
      user.uid      = auth.uid
      user.nickname = auth.info.nickname
    end
  end

  def twitter
    @twitter ||= Twitter::Client.new(oauth_token: oauth_token, oauth_token_secret: oauth_secret)
  end

  def votes_for(params)
    params[:votable].constantize.find(params[:votable_id]).add_evaluation(:votes, 1, self)
  end

  def votes_against(params)
    params[:votable].constantize.find(params[:votable_id]).add_evaluation(:votes, -1, self)
  end

end
