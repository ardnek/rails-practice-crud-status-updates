class UpdatesController < ApplicationController
  def index
    @updates = Update.all
  end

  def new
    @update = Update.new
  end

  def create
    update_params=params.require(:update).permit(:status, :user, :likes)
    @update = Update.new(update_params)
    if @update.save
      flash[:notice]="Status was successfully updated"
    redirect_to update_path(@update)
  else
      render :new
  end
end

  def show
    @update = Update.find(params[:id])
  end

  def edit
    @update = Update.find(params[:id])
  end

  def update
    update_params=params.require(:update).permit(:status, :user, :likes)
    @update=Update.find(params[:id])
    if @update.update(update_params)
      flash[:notice]="Status was successfully updated"
    redirect_to update_path(@update)
  else
        render :edit
  end
end

  def destroy
    @update=Update.find(params[:id])
    if @update.destroy
      flash[:notice]="Status was successfully deleted"
    redirect_to updates_path
  end
end


end
