class WelcomeController < ApplicationController
  def index
    @random_number = rand(10)

    @my_name = params[:my_name]
  end
end
