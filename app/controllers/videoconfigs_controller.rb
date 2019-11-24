class VideoconfigsController < ApplicationController
  layout "videoconfigs"
  
  def index
    @videoconfig = Videoconfig.find 1
  end

  def edit
    @videoconfig = Videoconfig.find 1
    if request.patch?
      @videoconfig.update videoconfig_params
      redirect_to "/videoconfigs"
    end
  end
  
  
  private
  def videoconfig_params
    params.require(:videoconfig).permit(:title, :subtitle, :stylename)
  end
  
end
