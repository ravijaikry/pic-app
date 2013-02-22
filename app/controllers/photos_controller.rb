class PhotosController < ApplicationController

  def new
    @f = params[:f]
#       raise params.inspect
    respond_to do |format|
      format.js
    end
  end
  
end
