class UserxesController < ApplicationController
  before_action :set_userx, only: [:show, :edit, :update, :destroy]

  # GET /userxes
  # GET /userxes.json
  def index
    @userxes = Userx.all
  end

  # GET /userxes/1
  # GET /userxes/1.json
  def show
  end

  # GET /userxes/new
  def new
    @userx = Userx.new
  end

  # GET /userxes/1/edit
  def edit
  end

  # POST /userxes
  # POST /userxes.json
  def create
    @userx = Userx.new(userx_params)

    respond_to do |format|
      if @userx.save
        format.html { redirect_to @userx, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @userx }
      else
        format.html { render :new }
        format.json { render json: @userx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userxes/1
  # PATCH/PUT /userxes/1.json
  def update
    respond_to do |format|
      if @userx.update(userx_params)
        format.html { redirect_to @userx, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @userx }
      else
        format.html { render :edit }
        format.json { render json: @userx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userxes/1
  # DELETE /userxes/1.json
  def destroy
    @userx.destroy
    respond_to do |format|
      format.html { redirect_to userxes_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userx
      @userx = Userx.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userx_params
      params[:userx]
    end
end
