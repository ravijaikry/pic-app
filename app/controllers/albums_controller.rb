class AlbumsController < ApplicationController
  before_filter :authenticate_user!
  def new
    @album = Album.new
#    @album.images.build
  end
  
  #  def edit
  #    @album = Album.find(params[:id])
  #  end
  
  def show
    @album = Album.find(params[:id])
  end
  



  def create
    @album = Album.new(params[:album])
    if @album.save
      flash[:notice] = "Album has been created."
      redirect_to albums_url
    else
      flash[:alert] = "Album has not been created."
      render :action => "new"
    end
  end
  
  def index
    @albums = Album.all
  end

end
