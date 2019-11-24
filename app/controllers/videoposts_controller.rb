class VideopostsController < ApplicationController
  layout "videoposts"
  
  def index
    @data = Videopost.all.order("created_at desc")
  end

  def add
    @videopost = Videopost.new
    @genres =Videogenre.all
    if request.post?
      @videopost = Videopost.create videoposts_params
      redirect_to "/videoposts"
    end
  end

  def edit
    @videopost = Videopost.find params[:id]
    @genres = Videogenre.all
    if request.patch?
      @videopost.update videoposts_params
      redirect_to "/videoposts"
    end
  end

  def delete
    @videopost = Videopost.find(params[:id])
    if request.post?
      @videopost.destroy
      redirect_to "/videoposts"
    end
  end
  
  private
  def videoposts_params
    params.require(:videopost).permit(:title, :read, :content, :videogenre_id, :url)
  end
end
