class Reserve < ApplicationRecord
      belongs_to :room #部屋データ
      belongs_to :user #ユーザーデータ



      

      def total_date
            (end_date - start_date).to_int/64800
      end

      
     
      def calc_total_price(price = 0)
            price * num_people * total_date.to_i
      end

      
end
