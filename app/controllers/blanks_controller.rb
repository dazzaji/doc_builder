class BlanksController < ApplicationController

   before_filter :confirm_logged_in
  # GET /blanks
  # GET /blanks.xml
  def index
    @blanks = Blank.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blanks }
    end
  end

  # GET /blanks/1
  # GET /blanks/1.xml
  def show
    @blank = Blank.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @blank }
    end
  end

  # GET /blanks/new
  # GET /blanks/new.xml
  def new
    @blank = Blank.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @blank }
    end
  end

  # GET /blanks/1/edit
  def edit
    @blank = Blank.find(params[:id])
  end

  # POST /blanks
  # POST /blanks.xml
  def create
    @blank = Blank.new(params[:blank])

    respond_to do |format|
      if @blank.save
        format.html { redirect_to(@blank, :notice => 'Blank was successfully created.') }
        format.xml  { render :xml => @blank, :status => :created, :location => @blank }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blank.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /blanks/1
  # PUT /blanks/1.xml
  def update
    @blank = Blank.find(params[:id])

    respond_to do |format|
      if @blank.update_attributes(params[:blank])
        format.html { redirect_to(@blank, :notice => 'Blank was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blank.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /blanks/1
  # DELETE /blanks/1.xml
  def destroy
    @blank = Blank.find(params[:id])
    @blank.destroy

    respond_to do |format|
      format.html { redirect_to(blanks_url) }
      format.xml  { head :ok }
    end
  end
end
