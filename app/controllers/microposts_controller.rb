class MicropostsController < ApplicationController
  def create
    @title = Title.find(params[:micropost][:id])
    @micropost = @title.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "回答登録完了"
      redirect_to(root_url)
    else
      redirect_to(root_url)
    end
  end
  
  def destroy
    @micropost = Micropost.find(params[:id])
    @micropost.destroy
    flash[:success] = "回答削除完了"
    redirect_to(root_url)
  end
  
  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end
end
