class TermTaxonomiesController < ApplicationController
  before_action :set_term_taxonomy, only: [:show, :edit, :update, :destroy]

  # GET /term_taxonomies
  # GET /term_taxonomies.json
  def index
    @term_taxonomies = TermTaxonomy.all
  end

  # GET /term_taxonomies/1
  # GET /term_taxonomies/1.json
  def show
  end

  # GET /term_taxonomies/new
  def new
    @term_taxonomy = TermTaxonomy.new
  end

  # GET /term_taxonomies/1/edit
  def edit
  end

  # POST /term_taxonomies
  # POST /term_taxonomies.json
  def create
    @term_taxonomy = TermTaxonomy.new(term_taxonomy_params)

    respond_to do |format|
      if @term_taxonomy.save
        format.html { redirect_to @term_taxonomy, notice: 'Term taxonomy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @term_taxonomy }
      else
        format.html { render action: 'new' }
        format.json { render json: @term_taxonomy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /term_taxonomies/1
  # PATCH/PUT /term_taxonomies/1.json
  def update
    respond_to do |format|
      if @term_taxonomy.update(term_taxonomy_params)
        format.html { redirect_to @term_taxonomy, notice: 'Term taxonomy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @term_taxonomy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /term_taxonomies/1
  # DELETE /term_taxonomies/1.json
  def destroy
    @term_taxonomy.destroy
    respond_to do |format|
      format.html { redirect_to term_taxonomies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_term_taxonomy
      @term_taxonomy = TermTaxonomy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def term_taxonomy_params
      params.require(:term_taxonomy).permit(:term_taxonomy_id, :term_id, :taxonomy, :description, :parent, :count)
    end
end
