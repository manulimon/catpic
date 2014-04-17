class User < ActiveRecord::Base
  has_many :pics
  validates :name, uniqueness:true
  validates :password, length: { minimum: 3 }

end
