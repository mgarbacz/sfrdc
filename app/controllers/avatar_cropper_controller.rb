class AvatarCropperController < ApplicationController
  # PUT /avatar_cropper/1/crop
  def crop
    @employee = Employee.find(params[:id])
    if @employee.update_attributes params[:employee]
      flash[:notice] = 'Thumbnail was successfully updated.'
      redirect_to @employee
    else
      render :action => 'edit'
    end
  end

  # GET /avatar_cropper/1/edit
  def edit
    @employee = Employee.find(params[:id])
  end
end
