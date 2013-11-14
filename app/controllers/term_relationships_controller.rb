class TermRelationshipsController < ApplicationController
  before_action :set_term_relationship, only: [:show, :edit, :update, :destroy]

  # GET /term_relationships
  # GET /term_relationships.json
  def index
    @term_relationships = TermRelationship.all
  end

  # GET /term_relationships/1
  # GET /term_relationships/1.json
  def show
  end

  # GET /term_relationships/new
  def new
    @term_relationship = TermRelationship.new
  end

  # GET /term_relationships/1/edit
  def edit
  end

  # POST /term_relationships
  # POST /term_relationships.json
  def create
    @term_relationship = TermRelationship.new(term_relationship_params)

    respond_to do |format|
      if @term_relationship.save
        format.html { redirect_to @term_relationship, notice: 'Term relationship was successfully created.' }
        format.json { render action: 'show', status: :created, location: @term_relationship }
      else
        format.html { render action: 'new' }
        format.json { render json: @term_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /term_relationships/1
  # PATCH/PUT /term_relationships/1.json
  def update
    respond_to do |format|
      if @term_relationship.update(term_relationship_params)
        format.html { redirect_to @term_relationship, notice: 'Term relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @term_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /term_relationships/1
  # DELETE /term_relationships/1.json
  def destroy
    @term_relationship.destroy
    respond_to do |format|
      format.html { redirect_to term_relationships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_term_relationship
      @term_relationship = TermRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def term_relationship_params
      params.require(:term_relationship).permit(:object_id, :term_taxonomy_id, :term_order)
    end
end
