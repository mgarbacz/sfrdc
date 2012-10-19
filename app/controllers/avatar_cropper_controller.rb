class AvatarCropperController < ApplicationController
  def crop
    # In here goes code to change thumbnail
  end

  # GET /employees/1/edit_thumbnail
  def edit
    @employee = Employee.find(params[:id])
  end
end
