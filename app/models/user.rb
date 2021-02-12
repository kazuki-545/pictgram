class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: {minimum: 3, maximam:15} 
  validates :nickname, presence: true
  validates :email, presence: true, uniqueness:true, format: { with: /\A.*@.*\z/}
  validates :tell, presence: true, numericality: { only_integer: true }
  validates :password, presence: true, length: {minimum: 8, maximam:24} , format: { with: /\A[A-Za-z]\w*\z/}
  
  has_secure_password
   
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
end
