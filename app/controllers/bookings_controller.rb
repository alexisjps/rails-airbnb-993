class BookingsController < ApplicationController
    before_action :set_flat, only: [:new, :create]

    def show
        @booking = Booking.where(user: current_user)
    end

    def new
        @booking = Booking.new
    end

    def create
        @booking = Booking.new(params_booking)
        @booking.flat = @flat
        @booking.user = current_user
        if @booking.save!
            redirect_to root_path
        else
        render :new
       end
    end

    def index
        @bookings = Booking.all
    end

    private

    def set_flat
        @flat = Flat.find(params[:flat_id])
    end

    def params_booking
        params.require(:booking).permit(:startbook_time, :endbook_time, :picture)
    end
end
