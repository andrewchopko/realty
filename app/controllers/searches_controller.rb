class SearchesController < ApplicationController

  def new
    @search = Search.new
    @category = Category.all
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:district, :street, :min_price, :max_price, :min_floor, :max_floor,
                                   :min_floor_quantity, :max_floor_quantity, :min_room, :max_room)                          
  end
end
