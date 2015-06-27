class FavmanisController < ApplicationController
  before_action :set_favmani, only: [:show, :edit, :update, :destroy]

  # GET /favmanis
  # GET /favmanis.json
  def index
    @favmanis = Favmani.all
  end

  # GET /favmanis/1
  # GET /favmanis/1.json
  def show
  end

  # GET /favmanis/new
  def new
    @favmani = Favmani.new
  end

  # GET /favmanis/1/edit
  def edit
  end

  # POST /favmanis
  # POST /favmanis.json
  def create
    @favmani = Favmani.new(favmani_params)

    respond_to do |format|
      if @favmani.save
        format.html { redirect_to @favmani, notice: 'Favmani was successfully created.' }
        format.json { render :show, status: :created, location: @favmani }
      else
        format.html { render :new }
        format.json { render json: @favmani.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favmanis/1
  # PATCH/PUT /favmanis/1.json
  def update
    respond_to do |format|
      if @favmani.update(favmani_params)
        format.html { redirect_to @favmani, notice: 'Favmani was successfully updated.' }
        format.json { render :show, status: :ok, location: @favmani }
      else
        format.html { render :edit }
        format.json { render json: @favmani.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favmanis/1
  # DELETE /favmanis/1.json
  def destroy
    @favmani.destroy
    respond_to do |format|
      format.html { redirect_to favmanis_url, notice: 'Favmani was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favmani
      @favmani = Favmani.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favmani_params
      params.require(:favmani).permit(:label, :numcol, :numaccents, :techid, :colourid, :accents)
    end
end
