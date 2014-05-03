class Post < ActiveRecord::Base
  belongs_to :user
  has_many :pics, through: :user
end
