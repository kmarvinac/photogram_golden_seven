class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })
  end

  def delete
    @delete = Photo.find_by({ :id => params[:id] })
    @delete.destroy
    redirect_to("/photos")
  end

  def create_row
    p = Photo.new
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save

    redirect_to("/photos")
  end

  def edit_form
    @p = Photo.find_by({ :id => params[:id] })
  end

  def update_row
    @p = Photo.find_by({ :id => params[:id] })
    @p.source = params[:new_source]
    @p.caption = params[:new_caption]
    @p.save
  end

end
