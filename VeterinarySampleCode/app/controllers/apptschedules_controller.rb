class ApptschedulesController < ApplicationController

  before_action :set_apptschedule, only: [:show, :edit, :update, :destroy]

  # GET /apptschedules
  # GET /apptschedules.json
  def index
    @apptschedules = Apptschedule.all
  end

  # GET /apptschedules/1
  # GET /apptschedules/1.json
  def show
  end

  # GET /apptschedules/new
  def new
    @apptschedule = Apptschedule.new
  end

  # GET /apptschedules/1/edit
  def edit
  end

  # POST /apptschedules
  # POST /apptschedules.json
  def create
    @apptschedule = Apptschedule.new(apptschedule_params)

    respond_to do |format|
      if @apptschedule.save
        format.html { redirect_to @apptschedule, notice: 'Apptschedule was successfully created.' }
        format.json { render :show, status: :created, location: @apptschedule }
      else
        format.html { render :new }
        format.json { render json: @apptschedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apptschedules/1
  # PATCH/PUT /apptschedules/1.json
  def update
    respond_to do |format|
      if @apptschedule.update(apptschedule_params)
        format.html { redirect_to @apptschedule, notice: 'Apptschedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @apptschedule }
      else
        format.html { render :edit }
        format.json { render json: @apptschedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apptschedules/1
  # DELETE /apptschedules/1.json
  def destroy
    @apptschedule.destroy
    respond_to do |format|
      format.html { redirect_to apptschedules_url, notice: 'Apptschedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apptschedule
      @apptschedule = Apptschedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apptschedule_params
      params.require(:apptschedule).permit(:date_of_visit, :pet_name, :customer, :reminder_flag, :visit_reason, :doctor)
    end 

end
