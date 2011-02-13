class TempDocsController < ApplicationController

  # before_filter :confirm_logged_in
  # GET /temp_docs
  # GET /temp_docs.xml
  def index
    @temp_docs = TempDoc.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @temp_docs }
    end
  end

  # GET /temp_docs/1
  # GET /temp_docs/1.xml
  def show
    @temp_doc = TempDoc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @temp_doc }
    end
  end

  # GET /temp_docs/new
  # GET /temp_docs/new.xml
  def new
    @temp_doc = TempDoc.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @temp_doc }
    end
  end

  # GET /temp_docs/1/edit
  def edit
    @temp_doc = TempDoc.find(params[:id])
  end

  # POST /temp_docs
  # POST /temp_docs.xml
  def create
    @temp_doc = TempDoc.new(params[:temp_doc])

    respond_to do |format|
      if @temp_doc.save
        format.html { redirect_to(@temp_doc, :notice => 'Temp doc was successfully created.') }
        format.xml  { render :xml => @temp_doc, :status => :created, :location => @temp_doc }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @temp_doc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /temp_docs/1
  # PUT /temp_docs/1.xml
  def update
    @temp_doc = TempDoc.find(params[:id])

    respond_to do |format|
      if @temp_doc.update_attributes(params[:temp_doc])
        format.html { redirect_to(@temp_doc, :notice => 'Temp doc was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @temp_doc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /temp_docs/1
  # DELETE /temp_docs/1.xml
  def destroy
    @temp_doc = TempDoc.find(params[:id])
    @temp_doc.destroy

    respond_to do |format|
      format.html { redirect_to(temp_docs_url) }
      format.xml  { head :ok }
    end
  end
end
