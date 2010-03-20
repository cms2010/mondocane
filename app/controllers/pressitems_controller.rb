class PressitemsController < ApplicationController
  # GET /pressitems
  # GET /pressitems.xml
  def index
    @pressitems = Pressitem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pressitems }
    end
  end

  # GET /pressitems/1
  # GET /pressitems/1.xml
  def show
    @pressitem = Pressitem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pressitem }
    end
  end

  # GET /pressitems/new
  # GET /pressitems/new.xml
  def new
    @pressitem = Pressitem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pressitem }
    end
  end

  # GET /pressitems/1/edit
  def edit
    @pressitem = Pressitem.find(params[:id])
  end

  # POST /pressitems
  # POST /pressitems.xml
  def create
    @pressitem = Pressitem.new(params[:pressitem])

    respond_to do |format|
      if @pressitem.save
        flash[:notice] = 'Pressitem was successfully created.'
        format.html { redirect_to(@pressitem) }
        format.xml  { render :xml => @pressitem, :status => :created, :location => @pressitem }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pressitem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pressitems/1
  # PUT /pressitems/1.xml
  def update
    @pressitem = Pressitem.find(params[:id])

    respond_to do |format|
      if @pressitem.update_attributes(params[:pressitem])
        flash[:notice] = 'Pressitem was successfully updated.'
        format.html { redirect_to(@pressitem) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pressitem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pressitems/1
  # DELETE /pressitems/1.xml
  def destroy
    @pressitem = Pressitem.find(params[:id])
    @pressitem.destroy

    respond_to do |format|
      format.html { redirect_to(pressitems_url) }
      format.xml  { head :ok }
    end
  end
end
