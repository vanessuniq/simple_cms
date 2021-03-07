class DemoController < ApplicationController
  def index
  end

  def hello
    @numbers = [1,2,3,4,5]
    # redirect_to action: 'index'
  end

  def about
    render "about_us"
  end
  
  def contact
    @phone_number = "+1 (940)-444-4545"
    @country = params[:country]
    if @country == "ca" || @country == "us"
      @phone_number = "(800)-555-1008"
    elsif @country == "uk"
      @phone_number = "(020)-108-0111"
    end
    render "contact_us"
  end
  
  
end
