class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable  :trackable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,:confirmable, :validatable,:omniauthable, omniauth_providers: [:google_oauth2]
end
