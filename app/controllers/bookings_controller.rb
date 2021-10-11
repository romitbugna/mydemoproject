class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    @bookings = MYDEMOPROJECT.paginate(:page => params[:page], :per_page => 4)
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)
    respond_to do |format|
    if @booking.save
      UserMailer.welcome_email(User.last).deliver_now
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
       

  def booking_params
    params.require(:booking).permit(:total_seat,:seat_type, :bus_name, :no_of_seats_booked,:cost_of_ticket, :bus_no, :bus_destination, :user_id)
  end

end
