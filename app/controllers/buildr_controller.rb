class BuildrController < ApplicationController

  before_filter :confirm_logged_in
  def index
	render :start
  end

  def start
	@categories = Category.all.collect
	
  end

  def build
	@sub = Subcategory.find(params[:id])
	
  end

  def fill
	
  end

  def edit

  end

  def finish
  
  end

end
