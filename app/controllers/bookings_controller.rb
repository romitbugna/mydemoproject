class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :update_bus_seat, only: [:show]

  def index
    @bookings = Booking.all
    # @bookings = BOOKING.paginate(:page => params[:page], :per_page => 4)
    respond_to do |format|
      format.html
    end
  end

  def new
    @bus_id = params[:bus_id]
    @booking = Booking.new
  end

  def show
    # BookingMailer.new_post.deliver_later
    @booking = Booking.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render template: "bookings/show.html.erb",
          pdf: "Booking ID: #{@booking.id}"
      end
    end
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)
    respond_to do |format|
    if @booking.save
      # UserMailer.welcome_email(@booking).deliver_now
      CatfactMailerJob.perform_later @booking 
      format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
      format.json { render :show, status: :created, location: @booking }
    
    else
      format.html { render :new }
      format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
    if @booking.update(booking_params)
      format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
      format.json { render :show, status: :ok, location: @booking }
    else
      format.html { render :edit }
      format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
     
  def update_bus_seat
    nos =  @booking.no_of_seats_booked
    ts = Bus.find(@booking.bus_id).total_seat
    total = ts - nos
    Bus.find(@booking.bus_id).update(total_seat: total)
  end

  def booking_params
    params.require(:booking).permit(:total_seat,:seat_type, :bus_name, :no_of_seats_booked,:cost_of_ticket, :bus_no, :bus_destination, :user_id, :from, :bus_id, :to, :time, :available_seat)
  end

end
