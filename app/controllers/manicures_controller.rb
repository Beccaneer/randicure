class ManicuresController < ApplicationController
  before_action :set_manicure, only: [:show, :edit, :update, :destroy]

  # GET /manicures
  # GET /manicures.json
  def index
    @manicures = Manicure.all
  end

  # GET /manicures/1
  # GET /manicures/1.json
  def show
  end

  # GET /manicures/new
  def new
    @manicure = Manicure.new
  end

  # GET /manicures/1/edit
  def edit
  end

  # POST /manicures
  # POST /manicures.json
  def create
    @manicure = Manicure.new(manicure_params)

    respond_to do |format|
      if @manicure.save
        format.html { redirect_to @manicure, notice: 'Manicure was successfully created.' }
        format.json { render :show, status: :created, location: @manicure }
      else
        format.html { render :new }
        format.json { render json: @manicure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manicures/1
  # PATCH/PUT /manicures/1.json
  def update
    respond_to do |format|
      if @manicure.update(manicure_params)
        format.html { redirect_to @manicure, notice: 'Manicure was successfully updated.' }
        format.json { render :show, status: :ok, location: @manicure }
      else
        format.html { render :edit }
        format.json { render json: @manicure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manicures/1
  # DELETE /manicures/1.json
  def destroy
    @manicure.destroy
    respond_to do |format|
      format.html { redirect_to manicures_url, notice: 'Manicure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manicure
      @manicure = Manicure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manicure_params
      params.require(:manicure).permit(:numcol, :numaccents, :techid, :colourid, :accents)
    end
end
