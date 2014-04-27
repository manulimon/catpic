class Cat < ActiveRecord::Base
  validates :user_id, presence: true
  validates :name, presence: true
  belongs_to :user


  def to_s
    "#{name}"
  end

end
