class RoomsController < ApplicationController
	before_action :set_room, except [:index, :new, :create]

	before_action :authenticate_user!, except: [:show]
	before_action :is_authorized, only: [:listing, :pricing, :description, :photo_upload, :amenities, :location, :update]

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
			flash[:alert] = "Something went wrong..." :new
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
		@photos = @room.photos
  end

  def amenities
  end

  def location
  end

  def update
		new_params = room_params
		new_params = room_params.merge(active: true) if is_ready_room
		if @room.update(new_params)
			flash[:alert] = "Saved..."
		else
			redirect_back(fallback_location: request.referer)
		end
  end

	private
		def set_room
			@room = Room.find(params[:id])
		end

		def is_authorized
			redirect_to root_path, alert: "You don't have permission" unless current_user.id == @room.user_id
		end

		def is_ready_room
			!@room.active && !@room.price.blank? && !@room.listing_name.blank? && !@room.photos.blank? && !@room.address.blank? && !@room.description.blank?
		end

		def room_params
			params.require(:room).permit(:home_type, :room_type, :accomodate, :listing_name, :summary, :address, :is_tv, :is_quiet,
       :is_coffee_tea, :is_snacks, :is_wifi, :is_bw_printing, :is_color_printing, :is_bw_copying, :is_color_copying, :is_pet_friendly, :is_fridge, :is_parking, :price, :active)
		end
end
