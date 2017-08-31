class Admin::ProductosController < AdminController
before_action :set_producto, only: [:edit, :update, :destroy]
  def index
    @productos = Producto.all
  end
  def new
    @producto = Producto.new

  end
  def create
    @producto = Producto.create(params_producto)
    unless @producto.errors.any?
      redirect_to admin_productos_path, notice: 'creado correctamente'
    else
      render :new
    end


  end
  def edit

  end
  def update
    @producto.update(params_producto)
    unless @producto.errors.any?
      redirect_to admin_productos_path, notice: 'actulizado correctamente'
    else
      render :new
    end


  end
  def destroy

  end

  private
  def set_producto
    @producto = Producto.find(params[:id])
  end
  def params_producto
    params.require(:producto).permit(:nombre)
  end
end
