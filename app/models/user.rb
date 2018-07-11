# basic class of User
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable  :trackable
  has_many :events
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :confirmable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first
    # Uncomment the section below if you want users to be created if they don't exist
    unless user
      # user.skip_confirmation!
      user = User.new(
        name: data['name'],
        email: data['email'],
        password: Devise.friendly_token[0, 20])

      user.skip_confirmation!
      user.save!
    end
    user
  end
end
