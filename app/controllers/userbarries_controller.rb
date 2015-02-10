class UserbarriesController < ApplicationController
  before_action :set_userbarry, only: [:show, :edit, :update, :destroy]

  # GET /userbarries
  # GET /userbarries.json
  def index
    @userbarries = Userbarry.all
  end

  # GET /userbarries/1
  # GET /userbarries/1.json
  def show
  end

  # GET /userbarries/new
  def new
    @userbarry = Userbarry.new
  end

  # GET /userbarries/1/edit
  def edit
  end

  # POST /userbarries
  # POST /userbarries.json
  def create
    @userbarry = Userbarry.new(userbarry_params)

    respond_to do |format|
      if @userbarry.save
        format.html { redirect_to @userbarry, notice: 'Userbarry was successfully created.' }
        format.json { render :show, status: :created, location: @userbarry }
      else
        format.html { render :new }
        format.json { render json: @userbarry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userbarries/1
  # PATCH/PUT /userbarries/1.json
  def update
    respond_to do |format|
      if @userbarry.update(userbarry_params)
        format.html { redirect_to @userbarry, notice: 'Userbarry was successfully updated.' }
        format.json { render :show, status: :ok, location: @userbarry }
      else
        format.html { render :edit }
        format.json { render json: @userbarry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userbarries/1
  # DELETE /userbarries/1.json
  def destroy
    @userbarry.destroy
    respond_to do |format|
      format.html { redirect_to userbarries_url, notice: 'Userbarry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userbarry
      @userbarry = Userbarry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userbarry_params
      params.require(:userbarry).permit(:ismatbarry@yahoo.fr)
    end
end
