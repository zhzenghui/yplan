class CommentmetaController < ApplicationController
  before_action :set_commentmetum, only: [:show, :edit, :update, :destroy]

  # GET /commentmeta
  # GET /commentmeta.json
  def index
    @commentmeta = Commentmetum.all
  end

  # GET /commentmeta/1
  # GET /commentmeta/1.json
  def show
  end

  # GET /commentmeta/new
  def new
    @commentmetum = Commentmetum.new
  end

  # GET /commentmeta/1/edit
  def edit
  end

  # POST /commentmeta
  # POST /commentmeta.json
  def create
    @commentmetum = Commentmetum.new(commentmetum_params)

    respond_to do |format|
      if @commentmetum.save
        format.html { redirect_to @commentmetum, notice: 'Commentmetum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @commentmetum }
      else
        format.html { render action: 'new' }
        format.json { render json: @commentmetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commentmeta/1
  # PATCH/PUT /commentmeta/1.json
  def update
    respond_to do |format|
      if @commentmetum.update(commentmetum_params)
        format.html { redirect_to @commentmetum, notice: 'Commentmetum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @commentmetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commentmeta/1
  # DELETE /commentmeta/1.json
  def destroy
    @commentmetum.destroy
    respond_to do |format|
      format.html { redirect_to commentmeta_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commentmetum
      @commentmetum = Commentmetum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commentmetum_params
      params.require(:commentmetum).permit(:meta_id, :comment_id, :meta_key, :meta_value)
    end
end
