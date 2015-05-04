class ItemhistoriesController < ApplicationController
  before_action :set_itemhistory, only: [:show, :edit, :update, :destroy]

  # GET /itemhistories
  # GET /itemhistories.json
  def index
    @itemhistories = Itemhistory.all
  end

  # GET /itemhistories/1
  # GET /itemhistories/1.json
  def show
  end

  # GET /itemhistories/new
  def new
    @itemhistory = Itemhistory.new
  end

  # GET /itemhistories/1/edit
  def edit
  end

  # POST /itemhistories
  # POST /itemhistories.json
  def create
    @itemhistory = Itemhistory.new(itemhistory_params)

    respond_to do |format|
      if @itemhistory.save
        format.html { redirect_to @itemhistory, notice: 'Itemhistory was successfully created.' }
        format.json { render :show, status: :created, location: @itemhistory }
      else
        format.html { render :new }
        format.json { render json: @itemhistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itemhistories/1
  # PATCH/PUT /itemhistories/1.json
  def update
    respond_to do |format|
      if @itemhistory.update(itemhistory_params)
        format.html { redirect_to @itemhistory, notice: 'Itemhistory was successfully updated.' }
        format.json { render :show, status: :ok, location: @itemhistory }
      else
        format.html { render :edit }
        format.json { render json: @itemhistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itemhistories/1
  # DELETE /itemhistories/1.json
  def destroy
    @itemhistory.destroy
    respond_to do |format|
      format.html { redirect_to itemhistories_url, notice: 'Itemhistory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itemhistory
      @itemhistory = Itemhistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itemhistory_params
      params.require(:itemhistory).permit(:item_id, :start_date, :end_date, :distance, :memo)
    end
end
