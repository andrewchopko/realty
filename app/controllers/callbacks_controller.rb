class CallbacksController < ApplicationController

  before_action :find_cb, only: [:edit, :update, :show, :destroy]

  def index
    @callbacks = Callback.all
  end

  def new
    @callback = Callback.new
  end

  def create
    @callback = Callback.new(callback_params)
    if @callback.save
      redirect_to root_path
    else
      render "new"
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

  def callback_params
    params.require(:callback).permit(:name, :number)
  end

  def find_cb
    @callback = Callback.find(params[:id])
  end
end
