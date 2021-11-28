class Room < ApplicationRecord
    has_one_attached :image
    has_many :reserves #予約データ

    validates :room_name, presence: true
    validates :room_price, numericality: true
    validates :room_PR, length: { in: 1..50 }

end
