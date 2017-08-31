class HomeController < ApplicationController
  layout 'index'
  def index
    @idiomas = Idioma.all
    @banner = Banner.all
    @empresas = Empresa.all
    @hacemos = Trabajo.all
    @producto = Producto.all
  end

end
