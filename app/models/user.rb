class User < ActiveRecord::Base
  has_secure_password

  has_many :bookmarks
  has_many :friendships

  validates :email,
            presence: true,
            format: {with: /\A[\w+\-.]+@[a-z\d\-]+\.[a-z]+\z/i, message: " is invalid"}

  validates :password,
            format: {with: /\A^(?=.*\d)(?=.*[a-zA-Z]).{6,9}$\z/, message: " must be between 6 and 9 characters and have one number."}

  validates :first_name, presence: true
  validates :last_name, presence: true
end