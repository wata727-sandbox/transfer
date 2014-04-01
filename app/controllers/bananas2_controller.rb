class Bananas2Controller < ApplicationController
  
  
  
  before_action :set_banana, only: [:show, :edit, :update, :destroy]

  # GET /bananas
  # 
  # GET /bananas.json
  def index
    @bananas = Banana.all
  end

  # GET /bananas/1
  # GET /bananas/1.json
  def show
  end

  # GET /bananas/new
  def new
    @banana = Banana.new
  end

  # GET /bananas/1/edit
  def edit
  end

  # POST /bananas
  # POST /bananas.json
  def create
    @banana = Banana.new(params[:banana])

    respond_to do |format|
      if @banana.save
        format.html { redirect_to @banana, notice: 'Banana was successfully created.' }
        format.json { render action: 'show', status: :created, location: @banana }
      else
        format.html { render action: 'new' }
        format.json { render json: @banana.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bananas/1
  # PATCH/PUT /bananas/1.json
  def update
    respond_to do |format|
      if @banana.update(banana_params)
        format.html { redirect_to @banana, notice: 'Banana was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @banana.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bananas/1
  # DELETE /bananas/1.json
  def destroy
    @banana.destroy
    respond_to do |format|
      format.html { redirect_to bananas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banana
      @banana = Banana.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banana_params
      params.require(:banana).permit(:name, :price)
    end
end
