class CallbacksController < ApplicationController

  before_action :find_cb, only: [:edit, :update, :show, :destroy]
  before_action :set_house

  def index
    @callbacks = Callback.all
  end

  def new
    @callback = Callback.new
  end

  def create
    @callback = Callback.new cb_params
    @callback.house_id = @house.id

    if @callback.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def cb_params
    params.require(:callback).permit(:name, :number)
  end

  def find_cb
    @callback = Callback.find(params[:id])
  end

  def set_house
    @house = House.find(params[:house_id])
  end
end
