class PortofoliosController < ApplicationController

  def index
    @portofolios = Portofolio.order("created_at DESC")
  end

  def show
    @portofolio = Portofolio.find(params[:id])
  end
end
