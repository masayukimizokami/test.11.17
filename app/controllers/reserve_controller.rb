class ReserveController < ApplicationController

	before_action :permit_params, except: :new

	def new
		@reserve = Reserve.new
		@room = Room.find(params[:id])
		@reservation.total_date = @reservation.end_date - @reservation.start_date
		
	end

	def back
		@reserve = Reserve.new(@attr)
		redirect_to :rooms
	end

	def confirm
		@room = Room.find(params[:room_id])
		@reserve = Reserve.new(@attr)
		@search = Search.new
		@user = current_user
		@reserve.user_id = current_user.id	
		session[:reserve] = @reserve
		if @reserve.invalid?
			#redirect_to :rooms/(room)
		else
		end
	end

	def complete
		@room = Room.find(params[:room_id])
		@reserve = Reserve.new(@attr)
		@reserve.save
		@search = Search.new
		
	end

	private

	def permit_params

		@attr = (params.require('reserve').permit(:id, :user_id, :room_id, :start_date, :end_date, :num_people, :total_price, :total_date,:reserve_date,:name,:note))
	end

	
end