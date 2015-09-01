class PointsController < ApplicationController

  def show
    @trail = Trail.find(params[:trail_id])
    @point = @trail.points.find(params[:id])
  end

  def edit
    @trail = Trail.find(params[:trail_id])
    @point = @trail.points.find(params[:id])
  end

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

  def update
    @trail = Trail.find(params[:trail_id])
    @point = @trail.points.find(params[:id])
    @point.update(point_params)
    redirect_to trail_path(@trail)
  end


  private
    def point_params
      params.require(:point).permit(:name, :step, :level, :terrain)
    end
end
