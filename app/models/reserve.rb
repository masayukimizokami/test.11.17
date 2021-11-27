class Reserve < ApplicationRecord

      validates :num_people, presence: true,numericality: true
      validates :start_date, presence: true
      validates :end_date, presence: true
     
end
