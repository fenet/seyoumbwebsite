class PortofoliosController < ApplicationController

  def index
    @portofolios = Portofolio.order("created_at DESC")
    #@portofolios = Portofolio.paginate(:page => params[:page], :per_page => 9).order('created_at DESC')
  end

  def show
    @portofolio = Portofolio.find(params[:id])
  end
end
