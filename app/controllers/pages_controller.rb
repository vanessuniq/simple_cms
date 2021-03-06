class PagesController < ApplicationController
  before_action :find_page, only: [:show, :edit, :update, :destroy]
  # Create
  def new
    @page = Page.new(subject_id: params[:subject_id])
  end
  def create
    @page = Page.create(page_params)
    if @page.save
      redirect_to @page, notice: "You have successfully added a page to #{@page.subject.name} subject"
    else
      render :new
    end
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
    if @page.update(page_params)
      redirect_to @page, notice: "#{@page.name} has been successfully updated."
    else
      render :edit
    end
  end
  # Delete
  def destroy
    @page.destroy
    redirect_to subject_path(@page.subject), notice: "#{@page.name} page of this subject has been successfully deleted."
  end
  
  private
  
  def page_params
    params.require(:page).permit(:name, :position, :visible, :content, :subject_id)
  end
  
  def find_page
    @page = Page.find_by(id: params[:id])
    session[:back] = !request.referer ? pages_path : request.referer

    redirect_to session.delete(:back), alert: "The page requested is not found" unless @page
  end
  
end
