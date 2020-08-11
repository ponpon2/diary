class DiariesController < ApplicationController
  def index
    @diary = Diary.all
  end


  def new
    @diary = Diary.new
  end
  
  def create
    @diary = Diary.create(diary_params)
    if @diary.save
      redirect_to root_path
    else
      render :new, alert: '日記を投稿できませんでした'
    end
  end

  private

  def diary_params
    params.require(:diary).permit(:text)
  end

end