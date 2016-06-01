class HousesController < ApplicationController

  before_action :find_house, only: [:show, :edit, :destroy, :update]
  before_action :authenticate_user!, only: [:new, :create, :destroy, :update, :edit]

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
      render 'new'
      #redirect_to root_path
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
      render "edit"
    end
  end

  def edit
  end

  private

  def house_params
    params.require(:house).permit(:title, :description, :category_id, :district, :street, :price, :room_quantity, :floor, :floor_quantity, :image)
  end

  def find_house
    @house = House.find(params[:id])
  end
end