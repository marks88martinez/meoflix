class Site::InfosController < ApplicationController
  layout 'index'
  def index
    @idiomas = Idioma.all
    @banner = Banner.all
    @empresas = Empresa.all
    @hacemos = Trabajo.all
    @producto = Producto.all

    @info = Info.all
  end
  def show
    @prodcuto = Producto.find(params[:id])
    

  end
  private
  def set_producto

  end
  def params_producto
    #code
  end
end
