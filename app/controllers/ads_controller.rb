class AdsController < ApplicationController
  before_action :set_ad, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ create ]

  # GET /ads or /ads.json
  def index
    @query = Ad.ransack(params[:q])
    @ads = @query.result(distinct: true).where("sold = ?", false)

    if turbo_frame_request?
      render partial: "ads", locals: { ads: @ads }
    else
      render :index
    end
  
  end

  # GET /ads/1 or /ads/1.json
  def show
    @sale = Sale.new
    @sale.user = current_user
    @sale.ad = @ad
  end

  # GET /ads/new
  def new
    @ad = Ad.new
  end

  # GET /ads/1/edit
  def edit
  end

  # POST /ads or /ads.json
  def create
    @ad = Ad.new(ad_params)
    @sale = Sale.new
    @sale.user = current_user
    @sale.ad = @ad


    respond_to do |format|
      if @ad.save
        format.html { redirect_to ad_url(@ad), notice: "Ad was successfully created." }
        format.json { render :show, status: :created, location: @ad }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ads/1 or /ads/1.json
  def update
    respond_to do |format|
      if @ad.update(ad_params)
        format.html { redirect_to ad_url(@ad), notice: "Ad was successfully updated." }
        format.json { render :show, status: :ok, location: @ad }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ads/1 or /ads/1.json
  def destroy
    @ad.destroy

    respond_to do |format|
      format.html { redirect_to ads_url, notice: "Ad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad
      @ad = Ad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ad_params
      params.require(:ad).permit(:title, :category, :state, :description, :price, :city, :shipment, images: [])
    end
end
