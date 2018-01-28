class PhotosController < ApplicationController
    before_action :authenticate_user!
    def index
    end
    
    def new
    end

    def create
        @place = Place.find(params[:place_id])
        @place.photos.create(photo_params.merge(user: current_user))
        redirect_to place_path(@place)
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private 
        def photo_params
            params.require(:photo).permit(:caption, :picture)
        end
end
