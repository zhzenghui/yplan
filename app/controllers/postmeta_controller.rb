class PostmetaController < ApplicationController
  before_action :set_postmetum, only: [:show, :edit, :update, :destroy]

  # GET /postmeta
  # GET /postmeta.json
  def index
    @postmeta = Postmetum.all
  end

  # GET /postmeta/1
  # GET /postmeta/1.json
  def show
  end

  # GET /postmeta/new
  def new
    @postmetum = Postmetum.new
  end

  # GET /postmeta/1/edit
  def edit
  end

  # POST /postmeta
  # POST /postmeta.json
  def create
    @postmetum = Postmetum.new(postmetum_params)

    respond_to do |format|
      if @postmetum.save
        format.html { redirect_to @postmetum, notice: 'Postmetum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @postmetum }
      else
        format.html { render action: 'new' }
        format.json { render json: @postmetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postmeta/1
  # PATCH/PUT /postmeta/1.json
  def update
    respond_to do |format|
      if @postmetum.update(postmetum_params)
        format.html { redirect_to @postmetum, notice: 'Postmetum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @postmetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postmeta/1
  # DELETE /postmeta/1.json
  def destroy
    @postmetum.destroy
    respond_to do |format|
      format.html { redirect_to postmeta_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postmetum
      @postmetum = Postmetum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postmetum_params
      params.require(:postmetum).permit(:meta_id, :post_id, :meta_key, :meta_value)
    end
end
