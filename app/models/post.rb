class Post < ApplicationRecord
  validates :message, presence: true, length: { maximum: 255 }

  has_many :comments, dependent: :destroy
end
