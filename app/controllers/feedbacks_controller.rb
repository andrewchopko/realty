class FeedbacksController < ApplicationController

  def index
  end

  def new
    @feedback = Feedback.new
    @fb = Feedback.all
  end

  def create
    @feedback = Feedback.new(fb_params)
    if @feedback.save
      redirect_to root_path
    end
  end

  private

  def fb_params
    params.require(:feedback).permit(:name, :content, :public)
  end
end
