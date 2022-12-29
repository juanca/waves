class Comment < ApplicationRecord
  belongs_to :post

  validates :message, presence: true, length: { maximum: 255 }
end
