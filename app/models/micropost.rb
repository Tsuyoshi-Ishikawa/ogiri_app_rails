class Micropost < ApplicationRecord
  belongs_to :title
  validates :title_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
