class User < ActiveRecord::Base
  validates :name, uniqueness:true
  validates :password, length: { minimum: 3 }

end
