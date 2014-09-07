class PomskyBreedersController < ApplicationController
  before_action :set_pomsky_breeder, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /pomsky_breeders
  # GET /pomsky_breeders.json
  def index
    @pomsky_breeders = PomskyBreeder.all
  end

  # GET /pomsky_breeders/1
  # GET /pomsky_breeders/1.json
  def show
  end

  # GET /pomsky_breeders/new
  def new
    @pomsky_breeder = current_user.PomskyBreeders.build
  end

  # GET /pomsky_breeders/1/edit
  def edit
  end

  # POST /pomsky_breeders
  # POST /pomsky_breeders.json
  def create
    @pomsky_breeder = current_user.PomskyBreeders.build(pomsky_breeder_params)

    respond_to do |format|
      if @pomsky_breeder.save
        format.html { redirect_to @pomsky_breeder, notice: 'Pomsky breeder was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pomsky_breeder }
      else
        format.html { render action: 'new' }
        format.json { render json: @pomsky_breeder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pomsky_breeders/1
  # PATCH/PUT /pomsky_breeders/1.json
  def update
    respond_to do |format|
      if @pomsky_breeder.update(pomsky_breeder_params)
        format.html { redirect_to @pomsky_breeder, notice: 'Pomsky breeder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pomsky_breeder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pomsky_breeders/1
  # DELETE /pomsky_breeders/1.json
  def destroy
    @pomsky_breeder.destroy
    respond_to do |format|
      format.html { redirect_to pomsky_breeders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pomsky_breeder
      @pomsky_breeder = PomskyBreeder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pomsky_breeder_params
      params.require(:pomsky_breeder).permit(:name, :website, :email, :phone, :description, :image)
    end
end
