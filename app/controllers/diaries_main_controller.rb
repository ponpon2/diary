class DiariesMainController < ApplicationController
  def index
    @diary = DiaryMain.all
  end


  def new
    @diary = DiaryMain.new
  end
  
  def create
    @diary = DiaryMain.create(diary_params)
    if @diary.save
      redirect_to @diary, notice: 'ユーザ作成に成功しました'
    else
      render :new, alert: 'ユーザの作成に失敗しました'
    end
  end

  private

  def diary_params
    params.permit(:text)
  end

end