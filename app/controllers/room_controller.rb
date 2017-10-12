class RoomController < ApplicationController
	before_action :set_room, except [:index, :new, :create]

	before_action :authenticate_user!, except: [:show]

	def index
		@rooms = current_user.rooms
  end

  def new
		@room = current_user.rooms.build
  end

  def create
		@room = current_user.rooms.build(room_params)
		if @room.save
			redirect_to listing_room_path(@room), notice: "Saved..."
		else
			render :new, notice: "Something went wrong..."
		end
  end

	def show
	end

  def listing
  end

  def pricing
  end

  def description
  end

  def photo_upload
  end

  def amenities
  end

  def location
  end

  def update
		if @room = Room.find(room_params)
			flash[:notice] = "Saved"
		else
			redirect_back(fallback_location: request.referer)
		end
  end

	private
		def set_room
			@room = Room.find(params[:id])
		end

		def room_params
			params.require(:room).permit(:home_type, :room_type, :accomodate, :listing_name, :summary, :address, :is_tv, :is_quiet,
       :is_coffee_tea, :is_snacks, :is_wifi, :is_bw_printing, :is_color_printing, :is_bw_copying, :is_color_copying, :is_pet_friendly, :is_fridge, :is_parking, :price, :active)
		end
end
