class Site::HomeController < ApplicationController
  layout 'index'
  def index
    @idiomas = Idioma.all
    @banner = Banner.all
    @empresas = Empresa.all
    @hacemos = Trabajo.all

    # @info = Info.all
  end
end
