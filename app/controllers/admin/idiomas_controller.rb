class Admin::IdiomasController < AdminController
  before_action :set_idioma, only: [:edit, :update, :update_destroy]
  def index
    @idiomas = Idioma.all
  end
  def new
    @idioma = Idioma.new
  end
  def create
    @idioma = Idioma.create(params_idiomas)
    unless @idioma.errors.any?
      redirect_to admin_idiomas_path, notice: "el idioma #{@idioma.nombre} fue creado correctamente"
    else
      render :new
    end

  end
  def edit
    #code
  end
  def update
    @idioma.update(params_idiomas)
    unless @idioma.errors.any?
      redirect_to admin_idiomas_path, notice: "el idioma #{@idioma.nombre} fue actualizado"
    else
      render :edit
    end
  end
  def destroy
    #code
  end
  def update_destroy

    redirect_to admin_idiomas_path, notice: "el idioma #{@idioma.nombre} fue econtrado"
  end

  private
  def set_idioma

    @idioma = Idioma.find(params[:id])
  end
  def params_idiomas
    params.require(:idioma).permit(:nombre, :link)
  end
end
