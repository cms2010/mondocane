class ImagesController < ActionController::Base
  layout "admin"
  active_scaffold :images
  
  def item
    @images = Image.find(:all)
  end
end