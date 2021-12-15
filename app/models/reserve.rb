class Reserve < ApplicationRecord
      belongs_to :room #部屋データ

      

      def total_date
            (end_date - start_date).to_int/64800
      end

      
     
      def total_price(price = 0)
            price * num_people * total_date.to_i
      end

      
end
