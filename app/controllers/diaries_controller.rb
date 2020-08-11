class DiariesController < ApplicationController
  before_action :set_diary, only: [:edit, :update, :destroy]

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

  def update

    if @diary.update(diary_params)
      redirect_to root_path
    else
      render :edit, alert: '日記を変更できませんでした'
    end
  end

  def destroy
    if @diary.destroy
      redirect_to root_path
    else
      redirect_to root_path, alert: '日記を削除できませんでした'
    end
  end

  def edit
  end
  
  private

  def diary_params
    params.require(:diary).permit(:text)
  end

  def set_diary
    @diary = Diary.find(params[:id])
  end

end