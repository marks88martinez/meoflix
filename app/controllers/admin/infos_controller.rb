class Admin::InfosController < AdminController
before_action :set_info, only: [:edit, :update, :destroy]
  def index
    @infos = Info.all
  end
  def new
    @info = Info.new
  end
  def create
    @info = Info.create(params_info)
    unless @info.errors.any?
      redirect_to admin_infos_path, notice: 'creado correctamente'
    else
      render :new
    end
  end
  def edit
    #code
  end
  def update
    @info.update(params_info)
    unless  @info.errors.any?
      redirect_to admin_infos_path, notice: 'actualizado correctamente'
    else
      render :edit
    end
  end
  def destroy
    #code
  end

  private

  def set_info
    @info = Info.find(params[:id])
  end
  def params_info
    params.require(:info).permit(:titulo, :descripcion, :picture)
  end
end
