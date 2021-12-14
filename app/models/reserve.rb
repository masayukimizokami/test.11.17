class Reserve < ApplicationRecord
      belongs_to :room #部屋データ

      validates :num_people, presence: true,numericality: true
      validates :start_date, presence: true
      validates :end_date, presence: true

      def total_date
            (end_date - start_date).to_int/64800
      end

      
     
      def total_price(price = 0)
            price * num_people * total_date.to_i
      end

      
end
