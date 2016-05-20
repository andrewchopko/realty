class HousesController < ApplicationController

  before_action :find_house, only: [:show, :edit, :destroy, :update]

  def index
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def show
  end

  def create
    @house = House.new(house_params)

    if @house.save
      redirect_to @house
    else
      render 'New'
    end
  end

  def destroy
    @house.destroy
    redirect_to root_path
  end

  def update
    if @house.update(house_params)
      redirect_to @house
    else
      render "Edit"
    end
  end

  def edit

  end

  private

  def house_params
    params.require(:house).permit(:title, :description, :type, :district, :street, :price, :room_quantity, :floor, :floor_quantity)
  end

  def find_house
    @house = House.find(params[:id])
  end
end
