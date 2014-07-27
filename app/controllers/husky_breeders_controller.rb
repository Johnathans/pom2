class HuskyBreedersController < ApplicationController
  before_action :set_husky_breeder, only: [:show, :edit, :update, :destroy]

  # GET /husky_breeders
  # GET /husky_breeders.json
  def index
    @husky_breeders = HuskyBreeder.all
  end

  # GET /husky_breeders/1
  # GET /husky_breeders/1.json
  def show
  end

  # GET /husky_breeders/new
  def new
    @husky_breeder = HuskyBreeder.new
  end

  # GET /husky_breeders/1/edit
  def edit
  end

  # POST /husky_breeders
  # POST /husky_breeders.json
  def create
    @husky_breeder = HuskyBreeder.new(husky_breeder_params)

    respond_to do |format|
      if @husky_breeder.save
        format.html { redirect_to @husky_breeder, notice: 'Husky breeder was successfully created.' }
        format.json { render action: 'show', status: :created, location: @husky_breeder }
      else
        format.html { render action: 'new' }
        format.json { render json: @husky_breeder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /husky_breeders/1
  # PATCH/PUT /husky_breeders/1.json
  def update
    respond_to do |format|
      if @husky_breeder.update(husky_breeder_params)
        format.html { redirect_to @husky_breeder, notice: 'Husky breeder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @husky_breeder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /husky_breeders/1
  # DELETE /husky_breeders/1.json
  def destroy
    @husky_breeder.destroy
    respond_to do |format|
      format.html { redirect_to husky_breeders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_husky_breeder
      @husky_breeder = HuskyBreeder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def husky_breeder_params
      params.require(:husky_breeder).permit(:name, :website, :email, :phone, :description, :image)
    end
end
