class PagesController < ApplicationController
  @email = "mailto:info@mondocane.com"
  
  def index
    @title = "MONDOCANE"
  end

  def collection
    @title = "MONDOCANE / collection"
    
    # generate navigation
    $nav = []
    $items.each do |item|
      $nav << item.category if item.collection == 1
    end
    
    # remove duplicates from array and sort
    $nav.uniq!
    $nav.sort!
  end
  
  def collection_category
    @title = "MONDOCANE / collection"
    
    # generate navigation
    $nav = []
    $items.each do |item|
      $nav << item.category if item.collection == 1
    end
    
    # remove duplicates from array and sort
    $nav.uniq!
    $nav.sort!
  end
  
  def archive
    @title = "MONDOCANE / archive"

    # generate navigation
    $nav = []
    $items.each do |item|
      $nav << item.category if item.archive == 1
    end
    
    # remove duplicates from array and sort
    $nav.uniq!
    $nav.sort!
  end

  def archive_category
    @title = "MONDOCANE / archive"

    # generate navigation
    $nav = []
    $items.each do |item|
      $nav << item.category if item.archive == 1
    end
    
    # remove duplicates from array and sort
    $nav.uniq!
    $nav.sort!
  end
  
  def exhibitions
    @title = "MONDOCANE / exhibitions"
  end
  
  def about
    @title = "MONDOCANE / about"
  end
  
  def item
    # get item id
    @id = Integer(params[:id])-1
    
    currentItem = Item.find(params[:id])
    @images = currentItem.image.find(:all)
  end

  def exhibition
    # get exhibition id
    @id = Integer(params[:id])-1
    
    currentShow = Show.find(params[:id])
    @showimages = currentShow.showimage.find(:all)
  end
end
