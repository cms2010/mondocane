# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password  
  $items = Item.all
  $images = Image.all
  $shows = Show.all
  $showimages = Showimage.all
  $pressitems = Pressitem.all
  $events = Event.all
  $email = "mailto:info@mondocane.com"
  $nav = []
  $currentItem = 0
end
