class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reserves #予約データ
  has_many :rooms #部屋データ

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one_attached :image

         validates :name, presence: true
         validates :email, uniqueness: true, presence: true
end
