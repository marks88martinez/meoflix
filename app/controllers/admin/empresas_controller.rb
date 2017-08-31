class Admin::EmpresasController < AdminController
  before_action :set_empresa, only: [:edit, :update]
def edit
  @empresas = Empresa.all

end
def update
@empresa.update(params_empresa)
unless @empresa.errors.any?
  redirect_to edit_admin_empresa_path(1), notice: 'Empresa fue actulizado correctamente'
else
  render :edit
end
end
private
def set_empresa
  @empresa = Empresa.find(params[:id])
end
def params_empresa
  params.require(:empresa).permit(:id, :titulo, :descripcion, :picture)
end

end
