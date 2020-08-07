class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :kanji_family, :kanji_first, :kana_family, :kana_first, :birth, presence: true
  validates :email, format: { with: /\A\S+@\S+\.\S+\z/}
  validates :kanji_family, :kanji_first, format: { with: /\A[一-龥ぁ-ん]/}
  validates :kana_family, :kana_first, format: { with: /\A[ァ-ヶー－]+\z/}
  has_one :address
  has_one :card, dependent: :destroy
end
