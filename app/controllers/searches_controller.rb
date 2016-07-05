class SearchesController < ApplicationController

  def new
    @search = Search.new
    @districts = House.uniq.pluck(:district)
  end

  def show
    @search = Search.find(params[:id])
  end

  def create
    @search = Search.new search_params
    if @search.save
      redirect_to @search
    else
      render 'new'
    end
  end

  private

  def search_params
    params.require(:search).permit(:realty_typ, :street, :district, :min_price,
    :max_price, :min_room_quantity, :max_room_quantity, :min_floor, :max_floor,
    :min_floor_quantity, :max_floor_quantity)
  end
end
