class KhsController < ApplicationController
  before_action :set_kh, only: [:show, :edit, :update, :destroy]

  # GET /khs
  # GET /khs.json
  def index
    @khs = Kh.all
  end

  # GET /khs/1
  # GET /khs/1.json
  def show
  end

  # GET /khs/new
  def new
    @kh = Kh.new
  end

  # GET /khs/1/edit
  def edit
  end

  # POST /khs
  # POST /khs.json
  def create
    @kh = Kh.new(kh_params)

    respond_to do |format|
      if @kh.save
        format.html { redirect_to @kh, notice: 'Kh was successfully created.' }
        format.json { render :show, status: :created, location: @kh }
      else
        format.html { render :new }
        format.json { render json: @kh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /khs/1
  # PATCH/PUT /khs/1.json
  def update
    respond_to do |format|
      if @kh.update(kh_params)
        format.html { redirect_to @kh, notice: 'Kh was successfully updated.' }
        format.json { render :show, status: :ok, location: @kh }
      else
        format.html { render :edit }
        format.json { render json: @kh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /khs/1
  # DELETE /khs/1.json
  def destroy
    @kh.destroy
    respond_to do |format|
      format.html { redirect_to khs_url, notice: 'Kh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kh
      @kh = Kh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kh_params
      params.require(:kh).permit(:nim, :kode_mk, :nilai)
    end
end
