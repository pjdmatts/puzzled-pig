class TrailsController < ApplicationController
  before_action :set_trail, only: [:show, :edit, :update, :destroy]    # GET /trails.json
  
  def index
    @trails = Trail.all
  end

  def show
  end

  def new
    @trail = Trail.new
  end

  def edit
  end

  def create
    @trail = Trail.new(trail_params)

    respond_to do |format|
      if @trail.save
        format.html { redirect_to @trail, notice: 'Trail was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @trail.update(trail_params)
        format.html { redirect_to @trail, notice: 'Trail was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @trail.destroy
    respond_to do |format|
      format.html { redirect_to trails_url, notice: 'Trail was successfully destroyed.' }
    end
  end

  private
    def set_trail
      @trail = Trail.find(params[:id])
    end

    def trail_params
      params.require(:trail).permit(:name)
    end
end
