class WelcomeController < ApplicationController
  def index
    @dev = params[:dev]
    @curso = params[:curso]
  end
end
