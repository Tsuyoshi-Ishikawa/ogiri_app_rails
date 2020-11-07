class Title < ApplicationRecord
  has_many :microposts, foreign_key: :title_id, dependent: :destroy
  validates :content, presence: true, length: { maximum: 50 }
end
