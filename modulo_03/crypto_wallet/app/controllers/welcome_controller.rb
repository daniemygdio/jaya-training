class WelcomeController < ApplicationController
  def index
    @random_number = rand(10)
    @my_name = params[:my_name]

    cookies[:curso] = "Curso de Ruby on Rails - Jackson Pires COOKIE"
    session[:curso] = "Curso de Ruby on Rails - Jackson Pires SESSION"
  end
end
