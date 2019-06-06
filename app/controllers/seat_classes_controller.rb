class SeatClassesController < ApplicationController
  before_action :set_seat_class, only: [:show, :edit, :update, :destroy]

  # GET /seat_classes
  # GET /seat_classes.json
  def index
    @seat_classes = SeatClass.all
  end

  # GET /seat_classes/1
  # GET /seat_classes/1.json
  def show
  end

  # GET /seat_classes/new
  def new
    @seat_class = SeatClass.new
  end

  # GET /seat_classes/1/edit
  def edit
  end

  # POST /seat_classes
  # POST /seat_classes.json
  def create
    @seat_class = SeatClass.new(seat_class_params)

    respond_to do |format|
      if @seat_class.save
        format.html { redirect_to @seat_class, notice: 'Seat class was successfully created.' }
        format.json { render :show, status: :created, location: @seat_class }
      else
        format.html { render :new }
        format.json { render json: @seat_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seat_classes/1
  # PATCH/PUT /seat_classes/1.json
  def update
    respond_to do |format|
      if @seat_class.update(seat_class_params)
        format.html { redirect_to @seat_class, notice: 'Seat class was successfully updated.' }
        format.json { render :show, status: :ok, location: @seat_class }
      else
        format.html { render :edit }
        format.json { render json: @seat_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seat_classes/1
  # DELETE /seat_classes/1.json
  def destroy
    @seat_class.destroy
    respond_to do |format|
      format.html { redirect_to seat_classes_url, notice: 'Seat class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seat_class
      @seat_class = SeatClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seat_class_params
      params.require(:seat_class).permit(:class_name, :price, :food_service, :seat_type, :leg_room)
    end
end
