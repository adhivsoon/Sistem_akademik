class MataKuliahsController < ApplicationController
  before_action :set_mata_kuliah, only: [:show, :edit, :update, :destroy]

  # GET /mata_kuliahs
  # GET /mata_kuliahs.json
  def index
    @mata_kuliahs = MataKuliah.all
  end

  # GET /mata_kuliahs/1
  # GET /mata_kuliahs/1.json
  def show
  end

  # GET /mata_kuliahs/new
  def new
    @mata_kuliah = MataKuliah.new
  end

  # GET /mata_kuliahs/1/edit
  def edit
  end

  # POST /mata_kuliahs
  # POST /mata_kuliahs.json
  def create
    @mata_kuliah = MataKuliah.new(mata_kuliah_params)

    respond_to do |format|
      if @mata_kuliah.save
        format.html { redirect_to @mata_kuliah, notice: 'Mata kuliah was successfully created.' }
        format.json { render :show, status: :created, location: @mata_kuliah }
      else
        format.html { render :new }
        format.json { render json: @mata_kuliah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mata_kuliahs/1
  # PATCH/PUT /mata_kuliahs/1.json
  def update
    respond_to do |format|
      if @mata_kuliah.update(mata_kuliah_params)
        format.html { redirect_to @mata_kuliah, notice: 'Mata kuliah was successfully updated.' }
        format.json { render :show, status: :ok, location: @mata_kuliah }
      else
        format.html { render :edit }
        format.json { render json: @mata_kuliah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mata_kuliahs/1
  # DELETE /mata_kuliahs/1.json
  def destroy
    @mata_kuliah.destroy
    respond_to do |format|
      format.html { redirect_to mata_kuliahs_url, notice: 'Mata kuliah was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mata_kuliah
      @mata_kuliah = MataKuliah.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mata_kuliah_params
      params.require(:mata_kuliah).permit(:kode_mk, :nama_mk, :sks)
    end
end
