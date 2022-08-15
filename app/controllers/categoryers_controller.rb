class CategoryersController < ApplicationController
  before_action :set_categoryer, only: %i[ show edit update destroy ]

  # GET /categoryers or /categoryers.json
  def index
    @categoryers = Categoryer.all
    @categoriys = Categoriy.all

  end

  # GET /categoryers/1 or /categoryers/1.json
  def show
    @categoriys = Categoriy.all
    @products = Product.all
    @product_categories = ProductCategory.all
  end

  # GET /categoryers/new
  def new
    @categoryer = Categoryer.new
  end

  # GET /categoryers/1/edit
  def edit
  end

  # POST /categoryers or /categoryers.json
  def create
    @categoryer = Categoryer.new(categoryer_params)

    respond_to do |format|
      if @categoryer.save
        format.html { redirect_to categoryer_url(@categoryer), notice: "Categoryer was successfully created." }
        format.json { render :show, status: :created, location: @categoryer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categoryer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoryers/1 or /categoryers/1.json
  def update
    respond_to do |format|
      if @categoryer.update(categoryer_params)
        format.html { redirect_to categoryer_url(@categoryer), notice: "Categoryer was successfully updated." }
        format.json { render :show, status: :ok, location: @categoryer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categoryer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoryers/1 or /categoryers/1.json
  def destroy
    @categoryer.destroy

    respond_to do |format|
      format.html { redirect_to categoryers_url, notice: "Categoryer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoryer
      @categoryer = Categoryer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categoryer_params
      params.require(:categoryer).permit(:name, :categoriy_id)
    end
end
