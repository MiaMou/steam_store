class SteamsController < ApplicationController
  before_action :set_steam, only: [:show, :edit, :update, :destroy]

  # GET /steams
  # GET /steams.json
  def index
    @q = Steam.ransack(params[:q])
    @steams = @q.result.page(params[:page]).per(20)
  end

  # GET /steams/1
  # GET /steams/1.json
  def show
  end

  # GET /steams/new
  def new
    @steam = Steam.new
  end

  # GET /steams/1/edit
  def edit
  end

  # POST /steams
  # POST /steams.json
  def create
    @steam = Steam.new(steam_params)

    respond_to do |format|
      if @steam.save
        format.html { redirect_to @steam, notice: 'Steam was successfully created.' }
        format.json { render :show, status: :created, location: @steam }
      else
        format.html { render :new }
        format.json { render json: @steam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steams/1
  # PATCH/PUT /steams/1.json
  def update
    respond_to do |format|
      if @steam.update(steam_params)
        format.html { redirect_to @steam, notice: 'Steam was successfully updated.' }
        format.json { render :show, status: :ok, location: @steam }
      else
        format.html { render :edit }
        format.json { render json: @steam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steams/1
  # DELETE /steams/1.json
  def destroy
    @steam.destroy
    respond_to do |format|
      format.html { redirect_to steams_url, notice: 'Steam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_steam
      @steam = Steam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def steam_params
      params.require(:steam).permit(:appid, :name, :release_date, :english, :developer, :publisher, :platforms, :required_age, :categories, :genres, :steamspy_tags, :achievements, :positive_ratings, :negative_ratings, :average_playtime, :median_playtime, :owners, :price, :detailed_description, :about_the_game, :short_description, :header_image, :screenshots, :background, :movies)
    end
end
