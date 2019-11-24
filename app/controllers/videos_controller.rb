class VideosController < ApplicationController
  layout "videos"
  
  def index
    @data = Videopost.order("created_at desc").page(params[:page]).per(6)
    @videoconfig = Videoconfig.find 1
  end

  def genre
      page_size = 5
      @page_num = 0
      if params[:page] != nil
        @page_num = params[:page].to_i
      end
      @genre = Videogenre.find params[:id]
      @data = Videopost.where("videogenre_id = ?", params[:id])
      .order("created_at desc").offset( page_size * @page_num)
      .limit(page_size)
      @videoconfig = Videoconfig.find 1
  end

  def show
    @videopost = Videopost.find params[:id]
    @videoconfig = Videoconfig.find 1
  end
end
