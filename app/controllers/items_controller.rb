class ItemsController < ActionController::Base
  layout "admin"
  active_scaffold :items
end