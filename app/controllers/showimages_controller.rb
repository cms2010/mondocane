class ShowimagesController < ApplicationController
  # GET /showimages
  # GET /showimages.xml
  def index
    @showimages = Showimage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @showimages }
    end
  end

  # GET /showimages/1
  # GET /showimages/1.xml
  def show
    @showimage = Showimage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @showimage }
    end
  end

  # GET /showimages/new
  # GET /showimages/new.xml
  def new
    @showimage = Showimage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @showimage }
    end
  end

  # GET /showimages/1/edit
  def edit
    @showimage = Showimage.find(params[:id])
  end

  # POST /showimages
  # POST /showimages.xml
  def create
    @showimage = Showimage.new(params[:showimage])

    respond_to do |format|
      if @showimage.save
        flash[:notice] = 'Showimage was successfully created.'
        format.html { redirect_to(@showimage) }
        format.xml  { render :xml => @showimage, :status => :created, :location => @showimage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @showimage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /showimages/1
  # PUT /showimages/1.xml
  def update
    @showimage = Showimage.find(params[:id])

    respond_to do |format|
      if @showimage.update_attributes(params[:showimage])
        flash[:notice] = 'Showimage was successfully updated.'
        format.html { redirect_to(@showimage) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @showimage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /showimages/1
  # DELETE /showimages/1.xml
  def destroy
    @showimage = Showimage.find(params[:id])
    @showimage.destroy

    respond_to do |format|
      format.html { redirect_to(showimages_url) }
      format.xml  { head :ok }
    end
  end
end
