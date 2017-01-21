class JadwalsController < ApplicationController
  before_action :set_jadwal, only: [:show, :edit, :update, :destroy]

  # GET /jadwals
  # GET /jadwals.json
  def index
    @jadwals = Jadwal.all
  end

  # GET /jadwals/1
  # GET /jadwals/1.json
  def show
  end

  # GET /jadwals/new
  def new
    @jadwal = Jadwal.new
  end

  # GET /jadwals/1/edit
  def edit
  end

  # POST /jadwals
  # POST /jadwals.json
  def create
    @jadwal = Jadwal.new(jadwal_params)

    respond_to do |format|
      if @jadwal.save
        format.html { redirect_to @jadwal, notice: 'Jadwal was successfully created.' }
        format.json { render :show, status: :created, location: @jadwal }
      else
        format.html { render :new }
        format.json { render json: @jadwal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jadwals/1
  # PATCH/PUT /jadwals/1.json
  def update
    respond_to do |format|
      if @jadwal.update(jadwal_params)
        format.html { redirect_to @jadwal, notice: 'Jadwal was successfully updated.' }
        format.json { render :show, status: :ok, location: @jadwal }
      else
        format.html { render :edit }
        format.json { render json: @jadwal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jadwals/1
  # DELETE /jadwals/1.json
  def destroy
    @jadwal.destroy
    respond_to do |format|
      format.html { redirect_to jadwals_url, notice: 'Jadwal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jadwal
      @jadwal = Jadwal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jadwal_params
      params.fetch(:jadwal).permit(:kode_mk, :nip, :kode_ruang, :waktu)
    end
end
