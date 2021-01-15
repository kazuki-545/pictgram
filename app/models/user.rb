class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: {minimum: 3, maximam:15} 
  validates :email, presence: true, uniqueness:true, format: { with: /\A.*@.*\z/}
  validates :password, presence: true, length: {minimum: 8, maximam:24} , format: { with: /\A[A-Za-z]\w*\z/}
  
  has_secure_password
   
  has_many :topics
  has_many :favorites
end
