class StoresController < ApplicationController
  def index
    @stores = Store.all
    render :index
  end
end
