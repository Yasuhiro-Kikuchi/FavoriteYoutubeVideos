class VideogenresController < ApplicationController
  layout "videogenres"
  
  def index
    @data = Videogenre.all
  end

  def add
    @videogenre = Videogenre.new
    if request.post?
      @videogenre = Videogenre.create videogenre_params
      redirect_to "/videogenres"
    end
  end

  def edit
    @videogenre = Videogenre.find params[:id]
    if request.patch?
      @videogenre.update videogenre_params
      redirect_to "/videogenres"
    end
  end
  
  private
    def videogenre_params
        params.require(:videogenre).permit(:name, :memo)
    end
end
