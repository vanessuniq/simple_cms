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
    @subject = Subject.find_by(id: params[:id])

    redirect_to :back unless @subject 
  end
  
end
