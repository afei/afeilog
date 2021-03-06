class DevicesController < ApplicationController
  before_action :set_device, only: [:show, :edit, :update, :destroy]
	layout "lifts"

  # GET /devices
  # GET /devices.json
  def index
		if params[:search].present?
			verify_date = Date.parse params[:search]
			@devices = Device.expired( verify_date ) 
		else
			@devices = Device.all
		end
  end

  # GET /devices/1
  # GET /devices/1.json
  def show
  end

  # GET /devices/new
  def new
    @device = Device.new
  end

  # GET /devices/1/edit
  def edit
  end

  # POST /devices
  # POST /devices.json
  def create
    @company = Company.find_by(code: device_params[:company_code])
    @device = @company.devices.build( device_params)
		@device.company_id = @company.id

    respond_to do |format|
      if @device.save
        format.html { redirect_to devices_url, notice: 'Device was successfully created.' }
        format.json { render :show, status: :created, location: @device }
      else
        format.html { render :new }
        format.json { render json: @device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devices/1
  # PATCH/PUT /devices/1.json
  def update
    respond_to do |format|
      if @device.update(device_params)
        format.html { redirect_to devices_path, notice: 'Device was successfully updated.' }
        format.json { render :show, status: :ok, location: @device }
      else
        format.html { render :edit }
        format.json { render json: @device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devices/1
  # DELETE /devices/1.json
  def destroy
    @device.destroy
    respond_to do |format|
      format.html { redirect_to devices_url, notice: 'Device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device
      @device = Device.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_params
      params.require(:device).permit(:device_code, :serial_no, :model_no, :manufacturer, :first_use_date, :verify_date, :company_code)
    end
end
