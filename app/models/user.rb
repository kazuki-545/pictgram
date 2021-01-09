class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: {minimum: 3, maximam:15} 
  validates :email, presence: true, uniqueness:true
  validates :password, presence: true, length: {minimum: 8, maximam:24} 

  
  has_secure_password
   
  has_many :topics
end
