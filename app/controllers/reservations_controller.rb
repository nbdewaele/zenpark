class ReservationsController < ApplicationController
	before_action :authenticate_user!
	def create
		room = Room.find(params[:room_id])

		if current_user == room.user
			flash[:alert] = "You cannot book your own office"
		start_date = Date.parse(reservation_params[:start_date])
		#
		# end_date = Date.parse(reservation_params[:end_date])

		start_time = Date.parse(reservation_params[:start_time])

		start_time = Date.parse(reservation_params[:start_time])

		times = (start_date).to_i
		times = (end_time - start_time).to_i

		@reservation = current_user.reservation.build(reservation_params)
		@reservation.room = room_id
		@reservation.price = room.price
		@reservation.total = room.price * hours
		@reservation.save

		flash[:notice] = "Booked Successfully!"
		redirect to room
	end

	private

		def reservation_params
			params.require(:reservation).permit(:start_date, :end_date, :start_time, :end_time)
		end
end
