class FeedbacksController < ApplicationController

  before_action :find_fb, only: [:show, :update, :destroy, :edit]

  def index
  end

  def new
    @feedback = Feedback.new
    if user_signed_in?
      @fb = Feedback.find_by_sql("SELECT * FROM feedbacks WHERE public=false")
    else
      @fb = Feedback.find_by_sql("SELECT * FROM feedbacks WHERE public=true")
    end
  end

  def create
    @feedback = Feedback.new(fb_params)
    if @feedback.save
      redirect_to root_path
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def public_update
    @feedback = Feedback.find(params[:id])
    @feedback.update_attribute(:public, true)
    redirect_to new_feedback_path
  end
  private

  def fb_params
    params.require(:feedback).permit(:name, :content, :public)
  end

  def find_fb
    @feedback = Feedback.find(params[:id])
  end
end
