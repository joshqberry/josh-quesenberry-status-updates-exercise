class StatusUpdatesController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def user_params
        params.require(:organization).permit(:whatever, :whatever, :whatever)

end


end
