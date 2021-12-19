class RoomsController < ApplicationController
  before_action :set_q
  def reserve
    @reserve = current_user.reserves
  end
  
  def myroom
    @rooms = Room.all
  end
 
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
    @reserve = Reserve.new
    @search = Search.new
  end

  def new
    @room = Room.new
    @search = Search.new
  end

  def create
    @room = Room.new(room_params)
    @room.user_id = current_user.id
    if@room.save
      flash[:notice]="新しい部屋を登録しました"
      redirect_to room_path(@room)
    else
      flash[:notice]="部屋を登録できませんでした"
      render"new"
    end 
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
   if @room.update(room_params)
    flash[:notice]="部屋を編集しました"
    redirect_to room_path(@room)
   else
    flash[:notice]="部屋を編集できませんでした"
    render"edit"
   end
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to rooms_path
  end

  def search
    @results = @q.result
  end

  private

  def room_params
    params.require(:room).permit(:room_name, :room_PR, :room_price, :room_address,:image,:total_price,)
  end

  def set_q
    @q = Room.ransack(params[:q])
  end
end
