class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_secure_password
    has_many :posts
    has_many :comments
    has_many :likes
    has_many :liked_posts, -> { where(reaction: 'like') }, through: :likes, source: :post
  end
  
