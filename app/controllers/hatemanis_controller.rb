class HatemanisController < ApplicationController
  before_action :set_hatemani, only: [:show, :edit, :update, :destroy]

  # GET /hatemanis
  # GET /hatemanis.json
  def index
    @hatemanis = Hatemani.all
  end

  # GET /hatemanis/1
  # GET /hatemanis/1.json
  def show
  end

  # GET /hatemanis/new
  def new
    @hatemani = Hatemani.new
  end

  # GET /hatemanis/1/edit
  def edit
  end

  # POST /hatemanis
  # POST /hatemanis.json
  def create
    @hatemani = Hatemani.new(hatemani_params)

    respond_to do |format|
      if @hatemani.save
        format.html { redirect_to @hatemani, notice: 'Hatemani was successfully created.' }
        format.json { render :show, status: :created, location: @hatemani }
      else
        format.html { render :new }
        format.json { render json: @hatemani.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hatemanis/1
  # PATCH/PUT /hatemanis/1.json
  def update
    respond_to do |format|
      if @hatemani.update(hatemani_params)
        format.html { redirect_to @hatemani, notice: 'Hatemani was successfully updated.' }
        format.json { render :show, status: :ok, location: @hatemani }
      else
        format.html { render :edit }
        format.json { render json: @hatemani.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hatemanis/1
  # DELETE /hatemanis/1.json
  def destroy
    @hatemani.destroy
    respond_to do |format|
      format.html { redirect_to hatemanis_url, notice: 'Hatemani was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hatemani
      @hatemani = Hatemani.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hatemani_params
      params.require(:hatemani).permit(:techid, :colourid)
    end
end
