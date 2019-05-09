class WelcomeController < ApplicationController
  def index
    @random_number = rand(10)
  end
end
