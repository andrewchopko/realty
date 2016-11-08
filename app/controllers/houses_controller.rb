class HousesController < ApplicationController

  before_action :find_house, only: [:show, :edit, :destroy, :update]
  before_action :authenticate_user!, only: [:new, :create, :destroy, :update, :edit]

  def index
    @houses = House.all
  end

  def new
    @house = House.new
    @house.house_photos.build
  end

  def show
    @photos = @house.house_photos
  end

  def create
    @house = House.new(house_params)

    if @house.save
      if params[:images]
        params[:images].each { |image| @house.house_photos.create(image: image) }
      end
      redirect_to @house
    else
      render 'new'
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
    @house.house_photos.build
  end

  private

  def house_params
    params.require(:house).permit(:title, :description,
    :category_id, :district, :street, :price, :room_quantity,
    :floor, :floor_quantity, :image, :square_all, :square_kitchen,
    :square_live, house_photos_attributes: [:image, :_destroy] )
  end

  def find_house
    @house = House.find(params[:id])
  end
end
