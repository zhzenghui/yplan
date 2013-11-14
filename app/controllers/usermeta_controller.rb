class UsermetaController < ApplicationController
  before_action :set_usermetum, only: [:show, :edit, :update, :destroy]

  # GET /usermeta
  # GET /usermeta.json
  def index
    @usermeta = Usermetum.all
  end

  # GET /usermeta/1
  # GET /usermeta/1.json
  def show
  end

  # GET /usermeta/new
  def new
    @usermetum = Usermetum.new
  end

  # GET /usermeta/1/edit
  def edit
  end

  # POST /usermeta
  # POST /usermeta.json
  def create
    @usermetum = Usermetum.new(usermetum_params)

    respond_to do |format|
      if @usermetum.save
        format.html { redirect_to @usermetum, notice: 'Usermetum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @usermetum }
      else
        format.html { render action: 'new' }
        format.json { render json: @usermetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usermeta/1
  # PATCH/PUT /usermeta/1.json
  def update
    respond_to do |format|
      if @usermetum.update(usermetum_params)
        format.html { redirect_to @usermetum, notice: 'Usermetum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @usermetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usermeta/1
  # DELETE /usermeta/1.json
  def destroy
    @usermetum.destroy
    respond_to do |format|
      format.html { redirect_to usermeta_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usermetum
      @usermetum = Usermetum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usermetum_params
      params.require(:usermetum).permit(:umeta_id, :user_id, :meta_key, :meta_value)
    end
end
