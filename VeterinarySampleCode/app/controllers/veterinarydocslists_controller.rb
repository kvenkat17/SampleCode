class VeterinarydocslistsController < ApplicationController
  before_action :set_veterinarydocslist, only: [:show, :edit, :update, :destroy]

  # GET /veterinarydocslists
  # GET /veterinarydocslists.json
  def index
    @veterinarydocslists = Veterinarydocslist.all
  end

  # GET /veterinarydocslists/1
  # GET /veterinarydocslists/1.json
  def show
  end

  # GET /veterinarydocslists/new
  def new
    @veterinarydocslist = Veterinarydocslist.new
  end

  # GET /veterinarydocslists/1/edit
  def edit
  end

  # POST /veterinarydocslists
  # POST /veterinarydocslists.json
  def create
    @veterinarydocslist = Veterinarydocslist.new(veterinarydocslist_params)

    respond_to do |format|
      if @veterinarydocslist.save
        format.html { redirect_to @veterinarydocslist, notice: 'Veterinary Doctor was successfully created.' }
        format.json { render :show, status: :created, location: @veterinarydocslist }
      else
        format.html { render :new }
        format.json { render json: @veterinarydocslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /veterinarydocslists/1
  # PATCH/PUT /veterinarydocslists/1.json
  def update
    respond_to do |format|
      if @veterinarydocslist.update(veterinarydocslist_params)
        format.html { redirect_to @veterinarydocslist, notice: 'Veterinary Doctor was successfully updated.' }
        format.json { render :show, status: :ok, location: @veterinarydocslist }
      else
        format.html { render :edit }
        format.json { render json: @veterinarydocslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veterinarydocslists/1
  # DELETE /veterinarydocslists/1.json
  def destroy
    @veterinarydocslist.destroy
    respond_to do |format|
      format.html { redirect_to veterinarydocslists_url, notice: 'Veterinary Doctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_veterinarydocslist
      @veterinarydocslist = Veterinarydocslist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def veterinarydocslist_params
      params.require(:veterinarydocslist).permit(:name, :address, :city, :state, :zip, :school_degree_recvd, :years_in_practice)
    end
end
