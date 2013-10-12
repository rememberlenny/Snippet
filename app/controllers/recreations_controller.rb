class RecreationsController < ApplicationController
  before_action :set_recreation, only: [:show, :edit, :update, :destroy]

  # GET /recreations
  # GET /recreations.json
  def index
    @recreations = Recreation.all
  end

  # GET /recreations/1
  # GET /recreations/1.json
  def show
  end

  # GET /recreations/new
  def new
    @recreation = Recreation.new
  end

  # GET /recreations/1/edit
  def edit
  end

  # POST /recreations
  # POST /recreations.json
  def create
    @recreation = Recreation.new(recreation_params)

    respond_to do |format|
      if @recreation.save
        format.html { redirect_to @recreation, notice: 'Recreation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recreation }
      else
        format.html { render action: 'new' }
        format.json { render json: @recreation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recreations/1
  # PATCH/PUT /recreations/1.json
  def update
    respond_to do |format|
      if @recreation.update(recreation_params)
        format.html { redirect_to @recreation, notice: 'Recreation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recreation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recreations/1
  # DELETE /recreations/1.json
  def destroy
    @recreation.destroy
    respond_to do |format|
      format.html { redirect_to recreations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recreation
      @recreation = Recreation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recreation_params
      params.require(:recreation).permit(:name, :location, :address, :audience, :info, :days, :timeOfDay)
    end
end
