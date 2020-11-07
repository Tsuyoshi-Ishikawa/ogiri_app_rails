class TitlesController < ApplicationController
  def new
    @title = Title.new
  end
  
  def create
    @title = Title.new(title_params)
    if @title.save
      flash[:success] = "お題登録完了"
      redirect_to @title
    else
      render 'new'
    end
  end
  
  def destroy
    @title = Title.find(params[:id])
    @title.destroy
    flash[:success] = "お題削除完了"
    redirect_to(root_url)
  end
  
  def index
    @titles = Title.all
    @micropost = Micropost.new
  end
  
  private
  
  def title_params
    params.require(:title).permit(:content)
  end
end
