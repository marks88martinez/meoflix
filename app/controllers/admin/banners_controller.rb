class Admin::BannersController < AdminController
  before_action :set_banner, only: [:edit, :update, :destroy]
    def index
      @banners = Banner.all

    end
    def new
      @banner = Banner.new
      
    end
    def create
      @banner = Banner.create(params_banner)
      unless @banner.errors.any?
        redirect_to admin_banners_path, notice: "banner creado correctamente"
      else
        render :new
      end
    end
    def edit
      #code
    end
    def update
      @banner.update(params_banner)
      unless @banner.errors.any?
        redirect_to admin_banners_path, notice: "banner actulizado correctamente"
      else
        render :edit
      end
    end
    def destroy
      #code
    end

    private
    def set_banner
      @banner = Banner.find(params[:id])
    end
  def params_banner
    params.require(:banner).permit(:url_banner ,:picture, :titulo, :descripcion, :a_titulo, :a_descripcion)
  end
end
