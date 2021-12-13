class Room < ApplicationRecord
    has_one_attached :image
    has_many :reserves #予約データ

    validates :room_name, presence: true
    validates :room_image, presence: true
    validates :room_price, presence: true,numericality: true
    validates :room_PR, presence: true ,length: { in: 1..50 }
    validates :room_address, presence: true

end
