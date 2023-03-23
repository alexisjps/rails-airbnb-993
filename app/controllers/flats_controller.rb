class FlatsController < ApplicationController
    before_action :set_flat, only: [:show]
    def index
        @flats = Flat.all
    end
    # search bar
    # def index
    #     @boats = Capsule.all
    #     if params[:query]
    #       @boats = Capsule.search_by_name_and_years(params[:query])
    #     else
    #       @boats = Capsule.all
    #     end
    #   end
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
