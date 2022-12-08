class FlatsController < ApplicationController
    before_action :set_flat, only: [:show]
    def index
        @flats = Flat.all
    end
    def show
        @flats = Flat.all
        @markers = @flats.geocoded.map do |flat|
            {
                lat: flat.latitude,
                lng: flat.longitude
            }
        end
    end

    private
    def set_flat
        @flat = Flat.find(params[:id])
    end
end
