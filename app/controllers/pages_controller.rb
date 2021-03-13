class PagesController < ApplicationController
  before_action :find_page, only: [:show, :edit, :update, :destroy]
  # Create
  def new

  end
  def create

  end
  # Read
  def index
    @pages = Page.order("position ASC")
  end
  def show
    
  end
  # Update
  def edit

  end
  def update
    
  end
  # Delete
  def destroy
    
  end
  
  private
  
  def find_page
    @page = Page.find_by(id: params[:id])
    session[:back] = !request.referer ? pages_path : request.referer

    redirect_to session.delete(:back), alert: "The page requested is not found" unless @page
  end
  
end
