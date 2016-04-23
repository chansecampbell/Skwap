class StaticsController < ApplicationController
  before_filter :authenticate_user!, except: [:about] 
  
  def home
  end

  def about
  end
end
