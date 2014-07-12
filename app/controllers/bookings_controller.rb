class BookingsController < ApplicationController
  # before_filter :authenticate_user!
  before_filter :set_venue
  before_action :set_room
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
    @bookings = @bookings.after(params['starts_at']) if (params['starts_at'])
    @bookings = @bookings.before(params['ends_at']) if (params['ends_at'])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookings.index}
    end
  end

  def show
    @booking = Booking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @booking }
      format.js { render :json => @booking.to_json }
    end
  end

  def new
    @booking = Booking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @booking }
      format.js { render :json => @booking.to_json }
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.room = Room.find(params[:room_id])
    @booking.venue = Venue.find(params[:venue_id])

    respond_to do |format|
      if @booking.save
        format.html { redirect_to venue_rooms_path, :notice => 'Booking was successfully created.' }
        format.xml  { render :xml => @booking, :status => :created, :location => @booking }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @booking.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @booking = Booking.find(params[:id])

    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to venue_room_bookings_path, notice: 'Booking was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to venue_room_bookings_path }
      format.json { head :no_content }
    end
  end

  private

  def set_venue
    @venue = Venue.find(params[:venue_id])
  end

  def set_room
    @room = Room.find(params[:room_id])
  end

  def booking_params
    params.require(:booking).permit!
  end
end
