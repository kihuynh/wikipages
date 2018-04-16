class DetailsController < ApplicationController
  def new
    @store = Store.find(params[:store_id])
    @detail = @store.details.new
  end

  def create
  @store = Store.find(params[:store_id])
  @detail = @store.details.new(detail_params)
  if @detail.save
    redirect_to store_path(@detail.store)
  else
    render :new
  end
end

  def edit
    @store = Store.find(params[:store_id])
    @detail = Detail.find(params[:id])
    render :edit
  end

  def update
    @detail = Detail.find(params[:id])
    if @detail.update(detail_params)
      redirect_to stores_path
    else
      render :edit
    end
  end

  def destroy
    @detail = Detail.find(params[:id])
    @detail.destroy
    redirect_to stores_path
  end

private
def detail_params
  params.require(:detail).permit(:address, :phone, :website, :hours)
end
end
