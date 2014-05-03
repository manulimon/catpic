class Pic < ActiveRecord::Base
  belongs_to :user
  validates :url, presence: true
  validates :user_id, presence: true

  def to_s
    "#{header}"
  end
end
