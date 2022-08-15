class CategoriysController < ApplicationController
  before_action :set_categoriy, only: %i[ show edit update destroy ]

  # GET /categoriys or /categoriys.json
  def index
    @categoriys = Categoriy.all
  end

  # GET /categoriys/1 or /categoriys/1.json
  def show
  end

  # GET /categoriys/new
  def new
    @categoriy = Categoriy.new
  end

  # GET /categoriys/1/edit
  def edit
  end

  # POST /categoriys or /categoriys.json
  def create
    @categoriy = Categoriy.new(categoriy_params)

    respond_to do |format|
      if @categoriy.save
        format.html { redirect_to categoriy_url(@categoriy), notice: "Categoriy was successfully created." }
        format.json { render :show, status: :created, location: @categoriy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categoriy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoriys/1 or /categoriys/1.json
  def update
    respond_to do |format|
      if @categoriy.update(categoriy_params)
        format.html { redirect_to categoriy_url(@categoriy), notice: "Categoriy was successfully updated." }
        format.json { render :show, status: :ok, location: @categoriy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categoriy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoriys/1 or /categoriys/1.json
  def destroy
    @categoriy.destroy

    respond_to do |format|
      format.html { redirect_to categoriys_url, notice: "Categoriy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoriy
      @categoriy = Categoriy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categoriy_params
      params.require(:categoriy).permit(:name)
    end
end
