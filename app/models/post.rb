class Post < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :about
    validates :area
    validates :category
    validates :size
    validates :status
    validates :fee
    validates :days
    validates :delivery
    validates :price
    validates :delivery

  end
  validates :name, length: { maximum: 40}
  mount_uploader :image, ImageUploader
  belongs_to :user
  # belongs_to :category
  has_many :images, dependent: :destroy
  # accepts_nested_attributes_for :images, allow_destroy: true
end
