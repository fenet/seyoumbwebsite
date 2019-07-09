class StaticPagesController < ApplicationController
  def home
    @portofolios = Portofolio.order("created_at DESC").limit(3)
    @testimonies = Testimony.order("created_at DESC").limit(4)
  end

  def about_us
  end

  def our_services
  end
end
