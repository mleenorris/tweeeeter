class TweeeeetsController < ApplicationController
  before_action :set_tweeeeet, only: [:show, :edit, :update, :destroy]

  # GET /tweeeeets
  # GET /tweeeeets.json
  def index
    @tweeeeets = Tweeeeet.all.order("created_at DESC")
  end

  # GET /tweeeeets/1
  # GET /tweeeeets/1.json
  def show
  end

  # GET /tweeeeets/new
  def new
    @tweeeeet = Tweeeeet.new
  end

  # GET /tweeeeets/1/edit
  def edit
  end

  # POST /tweeeeets
  # POST /tweeeeets.json
  def create
    @tweeeeet = Tweeeeet.new(tweeeeet_params)

    respond_to do |format|
      if @tweeeeet.save
        format.html { redirect_to @tweeeeet, notice: 'Tweeeeet was successfully created.' }
        format.json { render :show, status: :created, location: @tweeeeet }
      else
        format.html { render :new }
        format.json { render json: @tweeeeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweeeeets/1
  # PATCH/PUT /tweeeeets/1.json
  def update
    respond_to do |format|
      if @tweeeeet.update(tweeeeet_params)
        format.html { redirect_to @tweeeeet, notice: 'Tweeeeet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweeeeet }
      else
        format.html { render :edit }
        format.json { render json: @tweeeeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweeeeets/1
  # DELETE /tweeeeets/1.json
  def destroy
    @tweeeeet.destroy
    respond_to do |format|
      format.html { redirect_to tweeeeets_url, notice: 'Tweeeeet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweeeeet
      @tweeeeet = Tweeeeet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweeeeet_params
      params.require(:tweeeeet).permit(:tweeeeet)
    end
end
