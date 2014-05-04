class Post < ActiveRecord::Base
  belongs_to :user
  has_one :pic, through: :user, source: :pics

  validates :title, presence: true
  validates :pic_id, presence: true

  def to_s
    "#{title}"
  end
end
