class Site::ProductosController < ApplicationController
  layout 'index'
  def index
    @idiomas = Idioma.all
    @banner = Banner.all
    @empresas = Empresa.all
    @hacemos = Trabajo.all

    @datosproducto = Datosproducto.all
    @producto = Producto.all

  end
  def show
    @idiomas = Idioma.all
    @banner = Banner.all
    @empresas = Empresa.all
    @hacemos = Trabajo.all

    @produc = Producto.find(params[:id])
    @producto = Producto.all




  end

end
