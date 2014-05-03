class User < ActiveRecord::Base
  has_many :pics, dependent: :destroy
  has_many :cats, dependent: :destroy
  has_many :posts, dependent: :destroy
  validates :name, uniqueness:true
  validates :password, length: { minimum: 3 }

  has_secure_password

  def to_s
    "#{name}"
  end

end
