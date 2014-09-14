class HuskyBreedersController < ApplicationController
  before_action :set_husky_breeder, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /husky_breeders
  # GET /husky_breeders.json
  def index
     @husky_breeders = HuskyBreeder.all.order("created_at DESC")
  end

  def show
  end

  def new
    @husky_breeder = current_user.husky_breeders.build
  end

  def edit
  end

  def create
    @husky_breeder = current_user.husky_breeders.build(husky_breeder_params)
    if @husky_breeder.save
      redirect_to husky_breeders_path, notice: 'Breeder was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @husky_breeder.update(husky_breeder_params)
      redirect_to @husky_breeder, notice: 'Breeder was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @husky_breeder.destroy
    redirect_to husky_breeders_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_husky_breeder
      @husky_breeder = HuskyBreeder.find(params[:id])
    end

    def correct_user
      @husky_breeder = current_user.husky_breeders.find_by(id: params[:id])
      redirect_to husky_breeders_path, notice: "Not authorized to edit this listing" if @husky_breeder.nil?
    end 

    # Never trust parameters from the scary internet, only allow the white list through.
    def husky_breeder_params
      params.require(:husky_breeder).permit(:name, :website, :email, :phone, :description, :image)
    end
end