class ColoursController < ApplicationController
  before_action :set_colour, only: [:show, :edit, :update, :destroy]

  # GET /colours
  # GET /colours.json
  def index
		@id=current_user.id #the current user
		@user = User.find(@id)
    @colours = Colour.where(user_id: @id)
  end

  # GET /colours/1
  # GET /colours/1.json
  def show
  end

	# TODO: colour_family_list is not loading if user gives invalid hex code
  # GET /colours/new
  def new
		@colour_family_list = ['Blue','Green','Yellow','Orange','Red','Purple','White','Brown','Black','Grey','Metallic']
    @colour = Colour.new
  end

  # GET /colours/1/edit
  def edit
		@colour_family_list = ['Blue','Green','Yellow','Orange','Red','Purple','White','Brown','Black','Grey','Metallic']
  end

  # POST /colours
  # POST /colours.json
  def create
		@id=current_user.id #the current user
    @colour = Colour.new(colour_params)
		@colour.user_id = @id

    respond_to do |format|
      if @colour.save
        format.html { redirect_to colours_path, notice: 'Polish was successfully created.' }
        format.json { render :show, status: :created, location: @colour }
      else
        format.html { render :new }
        format.json { render json: @colour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colours/1
  # PATCH/PUT /colours/1.json
  def update
    respond_to do |format|
      if @colour.update(colour_params)
        format.html { redirect_to colours_path, notice: 'Polish was successfully updated.' }
        format.json { render :show, status: :ok, location: @colour }
      else
        format.html { render :edit }
        format.json { render json: @colour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colours/1
  # DELETE /colours/1.json
  def destroy
    @colour.destroy
    respond_to do |format|
      format.html { redirect_to colours_url, notice: 'Polish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colour
      @colour = Colour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colour_params
      params.require(:colour).permit(:brandname, :productname, :colourname, :hexcode, :colourfam)
    end
end
