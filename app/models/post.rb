class Post < ActiveRecord::Base
  belongs_to :user
  has_many :pics, through: :user

  validates :title, presence: true
  ##validates :pic_id, presence: true

  def to_s
    "#{title}"
  end
end
