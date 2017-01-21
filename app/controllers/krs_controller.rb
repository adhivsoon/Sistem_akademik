class KrsController < ApplicationController
  before_action :set_kr, only: [:show, :edit, :update, :destroy]

  # GET /krs
  # GET /krs.json
  def index
    @krs = Kr.all
  end

  # GET /krs/1
  # GET /krs/1.json
  def show
  end

  # GET /krs/new
  def new
    @kr = Kr.new
  end

  # GET /krs/1/edit
  def edit
  end

  # POST /krs
  # POST /krs.json
  def create
    @kr = Kr.new(kr_params)

    respond_to do |format|
      if @kr.save
        format.html { redirect_to @kr, notice: 'Kr was successfully created.' }
        format.json { render :show, status: :created, location: @kr }
      else
        format.html { render :new }
        format.json { render json: @kr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /krs/1
  # PATCH/PUT /krs/1.json
  def update
    respond_to do |format|
      if @kr.update(kr_params)
        format.html { redirect_to @kr, notice: 'Kr was successfully updated.' }
        format.json { render :show, status: :ok, location: @kr }
      else
        format.html { render :edit }
        format.json { render json: @kr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /krs/1
  # DELETE /krs/1.json
  def destroy
    @kr.destroy
    respond_to do |format|
      format.html { redirect_to krs_url, notice: 'Kr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kr
      @kr = Kr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kr_params
      params.require(:kr).permit(:kode_mk, :nim, :kode_jur)
    end
end
