class Adress < ApplicationRecord
  belongs_to :user, optional: true
  validates :postal_code, :prefecture_id, :city ,presence: true
end
