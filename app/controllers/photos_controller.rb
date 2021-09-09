class PhotosController < ApplicationController
    def index
        @photos = Photo.all
    end
    
    def create
        Photo.create(photo_params)
        redirect_to '/photos'
    end
    private 
    def photo_params
        params.permit(:img).merge(img: params[:img])
    end
end
