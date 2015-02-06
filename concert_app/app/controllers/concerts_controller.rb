class ConcertsController < ApplicationController
  def index
       @concerts = Concert.last_created_concerts
    if @concerts.empty? 
      render 'no_projects_found'
    end
   
  end

  def create
  end

  def new
    @concert = Concert.new

  end

  def show
  end

  def edit
  end

  def home
      @concerts = Concert.created_today
    if @concerts.empty? 
      render 'no_projects_found'
    end

    @monthly_concerts = Concert.last_created_concerts
    
  end

  def details 
    @concert = Concert.find params[:id]
  end 

 



end
