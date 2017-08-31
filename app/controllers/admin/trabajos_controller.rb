class Admin::TrabajosController < AdminController
before_action :set_trabajo, only: [:edit, :update, :destroy]
  def index
    @trabajos = Trabajo.all
  end
  def new
    @trabajo = Trabajo.new
  end
  def create
    @trabajo = Trabajo.create(params_trabajo)
    unless @trabajo.errors.any?
      redirect_to admin_trabajos_path, notice: 'creado correctamente'
    else
      render :new
    end

  end
  def edit
    #code
  end
  def update

    @trabajo.update(params_trabajo)
    unless @trabajo.errors.any?
      redirect_to admin_trabajos_path, notice: 'actualizado correctamente'
    else
      render :edit
    end
  end
  def destroy
    #code
  end
  private
  def set_trabajo
    @trabajo = Trabajo.find(params[:id])
  end
  def params_trabajo
    params.require(:trabajo).permit(:titulo, :descripcion, :icon, :animate, :picture)
  end
end
