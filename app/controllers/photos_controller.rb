class PhotosController < ApplicationController
  before_action :authenticate_user!


  def create
   params[:photo][:post_id] = params[:post_id]
params[:photo][:user_id] = current_user.id
@photo = Photo.create(photo_params)
if @photo.save
redirect_to post_path(params[:post_id])
else
  @photo.errors.full_messages.each do |msg|
    @msg=msg
end
flash[:notice] = "#{@msg}"
redirect_to post_path(params[:post_id])
end
  end

private

  def photo_params
    params.require(:photo).permit(:user_id, :post_id, :photo)
  end

end