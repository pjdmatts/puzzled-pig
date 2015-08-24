class PointsController < ApplicationController


  def create
    @trail = Trail.find(params[:trail_id])
    @point = @trail.points.create(point_params)
    redirect_to trail_path(@trail)
  end

  def destroy
    @trail = Trail.find(params[:trail_id])
    @point = @trail.points.find(params[:id])
    @point.destroy
    redirect_to trail_path(@trail)
  end

  private
    def point_params
      params.require(:point).permit(:name, :step)
    end
end
