class DemoController < ApplicationController
  def index
  end

  def hello
    @numbers = [1,2,3,4,5]
    # redirect_to action: 'index'
  end
  
end
