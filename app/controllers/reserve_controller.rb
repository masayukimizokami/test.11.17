class ReserveController < ApplicationController

	before_action :permit_params, except: :new


	def new
		@reserve = Reserve.new
		@room = Room.find(params[:id])
		@reservation.total_date = @reservation.end_date - @reservation.start_date
		@total_date = @reservation.total_date.to_i
        @reservation.total_price = @room.room_price * @reservation.num_people * @reservation.total_date
	end

	def back
		@reserve = Reserve.new(@attr)
		render :new
	end

	def confirm
		@reserve = Reserve.new(@attr)
		session[:reserve] = @reserve
		if @reserve.invalid?
			render :new
		end
	end

	def complete
		Reserve.create!(@attr)
		
		@reserve = Reserve.find(params[:id])

	end

	private

	def permit_params

		@attr = (params.require('reserve').permit(:id,:name, :note, :user_id, :room_id, :start_date, :end_date, :num_people, :room_price, :total_price, :total_date))
	end

	
end