class EzesController < ApplicationController
  before_action :set_eze, only: [:show, :edit, :update, :destroy]

  # GET /ezes
  # GET /ezes.json
  def index
    @ezes = Eze.all
  end

  # GET /ezes/1
  # GET /ezes/1.json
  def show
  end

  # GET /ezes/new
  def new
    @eze = Eze.new
  end

  # GET /ezes/1/edit
  def edit
  end

  # POST /ezes
  # POST /ezes.json
  def create
    @eze = Eze.new(eze_params)

    respond_to do |format|
      if @eze.save
        format.html { redirect_to @eze, notice: 'Eze was successfully created.' }
        format.json { render action: 'show', status: :created, location: @eze }
      else
        format.html { render action: 'new' }
        format.json { render json: @eze.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ezes/1
  # PATCH/PUT /ezes/1.json
  def update
    respond_to do |format|
      if @eze.update(eze_params)
        format.html { redirect_to @eze, notice: 'Eze was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @eze.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ezes/1
  # DELETE /ezes/1.json
  def destroy
    @eze.destroy
    respond_to do |format|
      format.html { redirect_to ezes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eze
      @eze = Eze.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eze_params
      params.require(:eze).permit(:name)
    end
end
