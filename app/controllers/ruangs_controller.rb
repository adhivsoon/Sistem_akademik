class RuangsController < ApplicationController
  before_action :set_ruang, only: [:show, :edit, :update, :destroy]

  # GET /ruangs
  # GET /ruangs.json
  def index
    @ruangs = Ruang.all
  end

  # GET /ruangs/1
  # GET /ruangs/1.json
  def show
  end

  # GET /ruangs/new
  def new
    @ruang = Ruang.new
  end

  # GET /ruangs/1/edit
  def edit
  end

  # POST /ruangs
  # POST /ruangs.json
  def create
    @ruang = Ruang.new(ruang_params)

    respond_to do |format|
      if @ruang.save
        format.html { redirect_to @ruang, notice: 'Ruang was successfully created.' }
        format.json { render :show, status: :created, location: @ruang }
      else
        format.html { render :new }
        format.json { render json: @ruang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruangs/1
  # PATCH/PUT /ruangs/1.json
  def update
    respond_to do |format|
      if @ruang.update(ruang_params)
        format.html { redirect_to @ruang, notice: 'Ruang was successfully updated.' }
        format.json { render :show, status: :ok, location: @ruang }
      else
        format.html { render :edit }
        format.json { render json: @ruang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruangs/1
  # DELETE /ruangs/1.json
  def destroy
    @ruang.destroy
    respond_to do |format|
      format.html { redirect_to ruangs_url, notice: 'Ruang was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruang
      @ruang = Ruang.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ruang_params
      params.require(:ruang).permit(:kode_ruang)
    end
end
