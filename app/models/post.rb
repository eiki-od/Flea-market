class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :images, dependent: :destroy
end
