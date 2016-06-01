class FeedbacksController < ApplicationController

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

  private

  def fb_params
    params.require(:feedback).permit(:name, :content, :public)
  end
end
