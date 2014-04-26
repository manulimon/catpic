class Cat < ActiveRecord::Base
  validates :user_id, presence: true
  validates :name, presence: true
  has_one :user


  def to_s
    "#{name}"
  end

end
