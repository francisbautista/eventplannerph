class VenuesController < ApplicationController
  # before_filter :authenticate_user!
  before_action :set_venue, only: [:show, :edit, :update, :destroy]

  # Index function displays all venues for catalog
  def index
      @venues = Venue.all
  end

  # Show function isolates venue for show view
  def show
    @uploadable=@venue
    @assets = @uploadable.assets

    respond_to do |format|
      format.html
      format.json { render json: @asset}
    end
  end

  # New function creates new model instance
  def new
    @venue = Venue.new
    @asset = Asset.new
  end

  # Edit function edits a model instance
  def edit
    @user = User.find(current_user)

    @uploadable = @venue
    @assets = @uploadable.assets
    @asset = Asset.new
  else
    redirect_to error_path
  end

  # Create function instantiates and stores the model
  def create
    @venue = Venue.new(venue_params)
    respond_to do |format|
      if @venue.save
        format.html { redirect_to @venue, notice: 'Venue was successfully created.' }
        format.json { render action: 'show', status: :created, location: @venue }
      else
        format.html { render action: 'new' }
        format.json { render json: @venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # Update function stores and saves edited functions
  def update
    respond_to do |format|
      if @venue.update(venue_params)
        format.html { redirect_to @venue, notice: 'Venue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # Destroy function deletes a model and redirects
  def destroy
    @venue.destroy
    respond_to do |format|
      format.html { redirect_to venues_url }
      format.json { head :no_content }
    end
  end


  #=====================================================================#
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venue
      @venue = Venue.find(params[:id])
    end

    # Venue Parameter Whitelisting
    def venue_params
      params.require(:venue).permit!
    end
end
