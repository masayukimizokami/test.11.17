class ReserveController < ApplicationController

	before_action :permit_params, except: :new


	def new
		@reserve = Reserve.new
		@room = Room.find(params[:id])
		@date_gap = @reservation.date_gap.to_i
        @reservation.total_price = @room.room_price * @reservation.num_people * @date_gap
	end

	def back
		@reserve = Reserve.new(@attr)
		render :new
	end

	def confirm
		@reserve = Reserve.new(@attr)
		if @reserve.invalid?
			render :new
		end
	end

	def complete
		Reserve.create!(@attr)
	end

	private

	def permit_params
		@attr = params.require('room').permit(:room_name, :room_price, :room_address, :room_id)
		@attr = params.require('reserve').permit(:id, :reserve_date, :name, :note, :user_id, :room_id, :start_date, :end_date, :num_people, :room_price, :total_price, :date_gap)
	end

end