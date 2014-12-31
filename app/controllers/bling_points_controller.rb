class BlingPointsController < ApplicationController
  before_action :set_bling_point, only: [:show, :edit, :update, :destroy]

  # GET /bling_points
  # GET /bling_points.json
  def index
    @bling_points = BlingPoint.all
  end

  # GET /bling_points/1
  # GET /bling_points/1.json
  def show
  end

  # GET /bling_points/new
  def new
    @bling_point = BlingPoint.new
  end

  # GET /bling_points/1/edit
  def edit
  end

  # POST /bling_points
  # POST /bling_points.json
  def create
    @bling_point = BlingPoint.new(bling_point_params)

    respond_to do |format|
      if @bling_point.save
        format.html { redirect_to @bling_point, notice: 'Bling point was successfully created.' }
        format.json { render :show, status: :created, location: @bling_point }
      else
        format.html { render :new }
        format.json { render json: @bling_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bling_points/1
  # PATCH/PUT /bling_points/1.json
  def update
    respond_to do |format|
      if @bling_point.update(bling_point_params)
        format.html { redirect_to @bling_point, notice: 'Bling point was successfully updated.' }
        format.json { render :show, status: :ok, location: @bling_point }
      else
        format.html { render :edit }
        format.json { render json: @bling_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bling_points/1
  # DELETE /bling_points/1.json
  def destroy
    @bling_point.destroy
    respond_to do |format|
      format.html { redirect_to bling_points_url, notice: 'Bling point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bling_point
    @bling_point = BlingPoint.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def bling_point_params
    params.require(:bling_point).permit(:value)
  end
end
