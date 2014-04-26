class User < ActiveRecord::Base
  has_many :pics
  has_many :cats
  has_many :posts
  validates :name, uniqueness:true
  validates :password, length: { minimum: 3 }

end
