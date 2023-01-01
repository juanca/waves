class Post < ApplicationRecord
  validates :message, presence: true, length: { maximum: 255 }
  validates :reference, format: URI::DEFAULT_PARSER.make_regexp(%w[https])

  has_many :comments, dependent: :destroy
end
