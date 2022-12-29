class Post < ApplicationRecord
  validates :message, presence: true, length: { maximum: 255 }
end
