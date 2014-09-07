class PomeranianBreedersController < ApplicationController
  before_action :set_pomeranian_breeder, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /pomeranian_breeders
  # GET /pomeranian_breeders.json
  def index
    @pomeranian_breeders = PomeranianBreeder.all
  end

  # GET /pomeranian_breeders/1
  # GET /pomeranian_breeders/1.json
  def show
  end

  # GET /pomeranian_breeders/new
  def new
    @pomeranian_breeder = current_user.PomeranianBreeders.build
  end

  # GET /pomeranian_breeders/1/edit
  def edit
  end

  # POST /pomeranian_breeders
  # POST /pomeranian_breeders.json
  def create
    @pomeranian_breeder = current_user.PomeranianBreeders.build(pomeranian_breeder_params)

    respond_to do |format|
      if @pomeranian_breeder.save
        format.html { redirect_to @pomeranian_breeder, notice: 'Pomeranian breeder was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pomeranian_breeder }
      else
        format.html { render action: 'new' }
        format.json { render json: @pomeranian_breeder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pomeranian_breeders/1
  # PATCH/PUT /pomeranian_breeders/1.json
  def update
    respond_to do |format|
      if @pomeranian_breeder.update(pomeranian_breeder_params)
        format.html { redirect_to @pomeranian_breeder, notice: 'Pomeranian breeder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pomeranian_breeder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pomeranian_breeders/1
  # DELETE /pomeranian_breeders/1.json
  def destroy
    @pomeranian_breeder.destroy
    respond_to do |format|
      format.html { redirect_to pomeranian_breeders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pomeranian_breeder
      @pomeranian_breeder = PomeranianBreeder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pomeranian_breeder_params
      params.require(:pomeranian_breeder).permit(:name, :website, :email, :phone, :description, :image)
    end
end
