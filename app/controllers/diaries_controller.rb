class DiariesController < ApplicationController
  before_action :set_diary, only: [:edit, :update, :destroy]

  def index
    @diary = Diary.all
  end

  def new
    @diary = Diary.new
    @images = @diary.images.build
  end
  
  def create
    @diary = Diary.create(diary_params)
    if @diary.save
      if params[:images].present?
        # フォームで入力されたファイルを一つずつレコードに格納していく
        params[:images][:src].each do |a|
          @image = @diary.images.create!(src: a, diary_id: @diary.id)
        end
      end
        redirect_to root_path
      else
        render :new, alert: '日記を投稿できませんでした'
    end
  end

  def update
    if @diary.update(diary_params)
      if params[:images].present?
        params[:images][:src].each do |a|
          @image = @diary.images.update!(src: a, diary_id: @diary.id)
        end
      end
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
    params.require(:diary).permit(:text, images_attributes: [:src])
  end

  def set_diary
    @diary = Diary.find(params[:id])
  end

end