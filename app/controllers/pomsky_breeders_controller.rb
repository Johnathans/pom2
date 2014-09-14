class PomskyBreedersController < ApplicationController
  before_action :set_pomsky_breeder, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /pomsky_breeders
  # GET /pomsky_breeders.json
  def index
     @pomsky_breeders = PomskyBreeder.all
  end

  def show
  end

  def new
    @pomsky_breeder = current_user.pomsky_breeders.build
  end

  def edit
  end

  def create
    @pomsky_breeder = current_user.pomsky_breeders.build(pomsky_breeder_params)
    if @pomsky_breeder.save
      redirect_to pomsky_breeders_path, notice: 'Breeder was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @pomsky_breeder.update(pomsky_breeder_params)
      redirect_to @pomsky_breeder, notice: 'Breeder was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @pomsky_breeder.destroy
    redirect_to pomsky_breeders_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pomsky_breeder
      @pomsky_breeder = PomskyBreeder.find(params[:id])
    end

    def correct_user
      @pomsky_breeder = current_user.pomsky_breeders.find_by(id: params[:id])
      redirect_to pomsky_breeders_path, notice: "Not authorized to edit this listing" if @pomsky_breeder.nil?
    end 

    # Never trust parameters from the scary internet, only allow the white list through.
    def pomsky_breeder_params
      params.require(:pomsky_breeder).permit(:name, :website, :email, :phone, :description, :image)
    end
end