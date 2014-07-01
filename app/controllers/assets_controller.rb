class AssetsController < ApplicationController

  # Preloads function to identify
  # what uploadable resource is used
  before_filter :load_uploadable

  # Assigns assets to uploadable type as assigned
  # in load_uplodable private function
  def index
    @assets = @uploadable.assets
  end

  # Creates new Asset based on uploadable type
  def new
    @asset = @uploadable.assets.new
  end

  # Show function presents asset to uploadable
  # type in show view
  def show
    @asset = Asset.find(params[:id])
    @assets = @uploadable.assets
    respond_to do |format|
      format.html
      format.json { render json: @asset}
    end
  end

  # New function creates a new assets per model
  def new
    @asset = @uploadable.assets.new
  end

  # Maps uplodable type and assets with
  # their params and session save functions
  def create
    @asset = @uploadable.assets.new(asset_params)
    if request.path.include? "rooms"
      if @asset.save
        redirect_to venue_rooms_path
      else
        render :new
      end
    else
      if @asset.save
        redirect_to @uploadable, notice: "asset created."
      else
        render :new
      end
    end
  end

  # TODO
  # def edit
  # end

  # def update
  # end


  # Destroy function releases Asset
  def destroy
    @asset = Asset.find(params[:id])
    @asset.photo.destroy
    @asset.save
    redirect_to :back
  end

  private
  # Some strong params for whitelisting
  def asset_params
    params.require(:asset).permit(:photo)
  end

  # Takes URL and maps uploadable type to resource
  # If url contains rooms, resource is taken to be rooms
  # and id is classified accordingly
  # Params:
  # +original_url = current url of session
  def load_uploadable
    if request.original_url.include? "rooms"
      placeholder, venue, v_id, room, r_id, asset = request.path.split("/")
      puts "==========================="
      puts placeholder, venue, v_id, room, r_id, asset
      @venue= venue.singularize.classify.constantize.find(v_id)
      @room = room.singularize.classify.constantize.find(r_id)
      puts "==================="
      puts @room.inspect
      @uploadable =@room
    else
      resource, id = request.path.split('/')[1,2]
      @uploadable = resource.singularize.classify.constantize.find(id)
    end
  end
end
