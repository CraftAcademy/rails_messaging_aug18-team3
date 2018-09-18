class WelcomeController < ApplicationController
  def index
    flash[:success] = 'Signed in successfully'
  end
end
