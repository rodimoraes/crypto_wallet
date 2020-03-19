class WelcomeController < ApplicationController
  def index
    #Cookie salva no Navegador
    cookies[:curso] = "Curso de Ruby On Rails - Jackson Pires [COOKIE]"
    #Session salva no Servidor WEB
    session[:curso] = "Curso de Ruby On Rails - Jackson Pires [SESSION]"

    @dev = params[:dev]
    @curso = params[:curso]
  end
end
