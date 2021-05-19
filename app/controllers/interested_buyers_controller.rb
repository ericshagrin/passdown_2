class InterestedBuyersController < ApplicationController
  before_action :set_interested_buyer, only: %i[ show edit update destroy ]

  # GET /interested_buyers or /interested_buyers.json
  def index
    @interested_buyers = InterestedBuyer.all
  end

  # GET /interested_buyers/1 or /interested_buyers/1.json
  def show
  end

  # GET /interested_buyers/new
  def new
    @interested_buyer = InterestedBuyer.new
  end

  # GET /interested_buyers/1/edit
  def edit
  end

  # POST /interested_buyers or /interested_buyers.json
  def create
    @interested_buyer = InterestedBuyer.new(interested_buyer_params)

    respond_to do |format|
      if @interested_buyer.save
        format.html { redirect_to @interested_buyer, notice: "Interested buyer was successfully created." }
        format.json { render :show, status: :created, location: @interested_buyer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @interested_buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interested_buyers/1 or /interested_buyers/1.json
  def update
    respond_to do |format|
      if @interested_buyer.update(interested_buyer_params)
        format.html { redirect_to @interested_buyer, notice: "Interested buyer was successfully updated." }
        format.json { render :show, status: :ok, location: @interested_buyer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @interested_buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interested_buyers/1 or /interested_buyers/1.json
  def destroy
    @interested_buyer.destroy
    respond_to do |format|
      format.html { redirect_to interested_buyers_url, notice: "Interested buyer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interested_buyer
      @interested_buyer = InterestedBuyer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def interested_buyer_params
      params.require(:interested_buyer).permit(:apartment_id, :email, :name, :phone_number)
    end
end
