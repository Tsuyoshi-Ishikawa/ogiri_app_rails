class TitlesController < ApplicationController
  def new
    @title = Title.new
  end
  
  def create
    logger.debug(params)
    @title = Title.new(title_params)
    if @title.save
      flash[:success] = "お題登録完了"
      redirect_to @title
    else
      render 'new'
    end
  end
  
  def show
    @title = Title.find(params[:id])
  end
  
  private
  
  def title_params
    params.require(:title).permit(:content)
  end
end
