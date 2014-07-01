class RoomsController < ApplicationController
  # before_filter :authenticate_user!
  before_filter :set_venue
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  # Index function displays all rooms for catalog
  def index
    @rooms = Room.all
    @rooms = @venue.rooms.all
  end

  # Show function shows all rooms per venue
  def show
  end

  # New function creates a new room assigned to a venue
  def new
    @room = Room.new
    @room = @venue.rooms.new
  end

  # Edit function edits a room instance
  def edit
    @uploadable = @room
    @assets = @uploadable.assets
    @asset = Asset.new
  end

  # Create function instantiates a new Room model
  def create
  end

  # Update saves edited Room model
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # Destroy eliminates Room model
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to venue_rooms_path }
      format.json { head :no_content }
    end
  end

  #=====================================================================#
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    def set_venue
      @venue = Venue.find(params[:venue_id])
    end

    # Room params whitelisting
    def room_params
      params.require(:room).permit(:name, :venue_id, :description, :is_booked, :classification, :capacity, :booking_id)
    end
  end

end
