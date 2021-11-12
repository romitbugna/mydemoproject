class BusesController < ApplicationController
  before_action :set_bus, only: [:show, :edit, :update, :destroy]
  
  def search
    to = params[:search1]
    from = params[:search2]
    @buses = Bus.where(from: from, to: to)
      
  end

  def index
    @buses = Bus.all
    @buses = Bus.paginate(:page => params[:page], :per_page => 1)
  end

  def show
  end

  def new
    @bus = Bus.new
  end

  def edit
  end

  def create
    @bus = Bus.new(bus_params)
    
    respond_to do |format|
    if @bus.save
      format.html { redirect_to @bus, notice: 'Bus was successfully created.' }
      format.json { render :show, status: :created, location: @bus }
    else
      format.html { render :new }
      format.json { render json: @bus.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
    if @bus.update(bus_params)
      format.html { redirect_to @bus, notice: 'Bus was successfully updated.' }
      format.json { render :show, status: :ok, location: @bus }
    else
      format.html { render :edit }
      format.json { render json: @bus.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bus.destroy
    respond_to do |format|
      format.html { redirect_to buses_url, notice: 'Bus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
       
  def set_bus
    @bus = Bus.find(params[:id])
  end

  def bus_params
    params.require(:bus).permit(:bus_name,:bus_no, :seat_type,:from, :to, :date, :time, :search, :total_seat,:available_seat, :bus_id, :lower_class, :middle_class, :higher_class)
  end
end
  


