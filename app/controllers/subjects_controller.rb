class SubjectsController < ApplicationController
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
end
