class StatusUpdatesController < ApplicationController
  before_action :set_status_update, only: [:show, :edit, :update, :destroy]


  def index
    @status_updates = StatusUpdate.all
  end

  def new
    @status_update = StatusUpdate.new
  end

  def show
  end

  def edit
  end

  def create
    @status_update = StatusUpdate.new(status_update_params)

    if @status_update.save
        redirect_to @status_update, notice: "Yo, you done made a status update."
    else
        render :new
  end
end


  def update
    if @status_update.update(status_update_params)
      redirect_to @status_update, notice: "Yo, you done updated yer status update."
    else
      render :edit
  end
end

  def destroy
      @status_update = StatusUpdate.find(params:[:id])
      @status_update.destroy
        redirect_to root_path, notice: "Yo, you done destroyed your status update."
  end






  private

  def set_status_update
      @status_update = StatusUpdate.find(params[:id])
  end

  def status_update_params
        params.require(:status_update).permit(:status, :user, :number_of_likes)
  end


end
