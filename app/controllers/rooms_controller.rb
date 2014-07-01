class RoomsController < ApplicationController
  # before_filter :authenticate_user!
  before_filter :set_venue
  before_action :set_room, only: [:show, :edit, :update, :destroy]
end
