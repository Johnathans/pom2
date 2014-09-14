class PomeranianBreedersController < ApplicationController
  before_action :set_pomeranian_breeder, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /pomeranian_breeders
  # GET /pomeranian_breeders.json
  def index
     @pomeranian_breeders = PomeranianBreeder.all.order("created_at DESC")
  end

  def show
  end

  def new
    @pomeranian_breeder = current_user.pomeranian_breeders.build
  end

  def edit
  end

  def create
    @pomeranian_breeder = current_user.pomeranian_breeders.build(pomeranian_breeder_params)
    if @pomeranian_breeder.save
      redirect_to pomeranian_breeders_path, notice: 'Breeder was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @pomeranian_breeder.update(pomeranian_breeder_params)
      redirect_to @pomeranian_breeder, notice: 'Breeder was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @pomeranian_breeder.destroy
    redirect_to pomeranian_breeders_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pomeranian_breeder
      @pomeranian_breeder = PomeranianBreeder.find(params[:id])
    end

    def correct_user
      @pomeranian_breeder = current_user.pomeranian_breeders.find_by(id: params[:id])
      redirect_to pomeranian_breeders_path, notice: "Not authorized to edit this listing" if @pomeranian_breeder.nil?
    end 

    # Never trust parameters from the scary internet, only allow the white list through.
    def pomeranian_breeder_params
      params.require(:pomeranian_breeder).permit(:name, :website, :email, :phone, :description, :image)
    end
end