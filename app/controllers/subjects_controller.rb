class SubjectsController < ApplicationController
  before_action :find_subject, only: [:show, :edit, :update, :destroy]
  # Create
  def new

  end
  def create
    
  end
  # Read
  def index
    @subjects = Subject.order('position ASC')
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

  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end
  
  def find_subject
    session[:back] =  !request.referer ? subjects_path : request.referer
    @subject = Subject.find_by(id: params[:id])
    redirect_to session.delete(:back), alert: "The queried subject does not exist" unless @subject 
    # redirect_to session.delete(:back), alert: "The queried subject does not exist" unless @subject 
  end
  
end
