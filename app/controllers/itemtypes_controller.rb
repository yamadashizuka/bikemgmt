class ItemtypesController < ApplicationController
  before_action :set_itemtype, only: [:show, :edit, :update, :destroy]

  # GET /itemtypes
  # GET /itemtypes.json
  def index
    @itemtypes = Itemtype.all
  end

  # GET /itemtypes/1
  # GET /itemtypes/1.json
  def show
  end

  # GET /itemtypes/new
  def new
    @itemtype = Itemtype.new
  end

  # GET /itemtypes/1/edit
  def edit
  end

  # POST /itemtypes
  # POST /itemtypes.json
  def create
    @itemtype = Itemtype.new(itemtype_params)

    respond_to do |format|
      if @itemtype.save
        format.html { redirect_to @itemtype, notice: 'Itemtype was successfully created.' }
        format.json { render :show, status: :created, location: @itemtype }
      else
        format.html { render :new }
        format.json { render json: @itemtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itemtypes/1
  # PATCH/PUT /itemtypes/1.json
  def update
    respond_to do |format|
      if @itemtype.update(itemtype_params)
        format.html { redirect_to @itemtype, notice: 'Itemtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @itemtype }
      else
        format.html { render :edit }
        format.json { render json: @itemtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itemtypes/1
  # DELETE /itemtypes/1.json
  def destroy
    @itemtype.destroy
    respond_to do |format|
      format.html { redirect_to itemtypes_url, notice: 'Itemtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itemtype
      @itemtype = Itemtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itemtype_params
      params.require(:itemtype).permit(:name, :limitdistance, :memo)
    end
end
