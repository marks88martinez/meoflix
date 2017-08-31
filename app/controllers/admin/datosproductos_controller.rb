class Admin::DatosproductosController < AdminController
  before_action :set_datosprod, only: [:edit, :update, :destroy, :show]
  def index
    @datosproductos = Datosproducto.where(datosproducto: nil )
  end
  def show
    @datosproducto.destroy
    redirect_to admin_datosproductos_path, notice: 'eliminado correctamente'
  end
  def new
    @datosproducto = Datosproducto.new

    @producto = Producto.all

  end
  def create
    @datosproducto = Datosproducto.create(params_datosprod)
    unless @datosproducto.errors.any?
      redirect_to admin_datosproductos_path, notice: 'creado correctamente'
    else
      render :new
    end
  end
  def edit
      @producto = Producto.all

  end
  def update
    @datosproducto.update(params_datosprod)
    unless @datosproducto.errors.any?
      redirect_to admin_datosproductos_path, notice: 'actulizado correctamente'
    else
      render :edit
    end

  end
  def destroy
    @datosproducto.destroy
    redirect_to admin_datosproductos_path, notice: 'eliminado correctamente'
  end
  private
  def set_datosprod
    @datosproducto = Datosproducto.find(params[:id])
  end
  def params_datosprod
    params.require(:datosproducto).permit(:nombre, :descripcion, :color_bg, :producto_id, :picture, :datosproducto_id)
  end

end
