class StaticPagesController < ApplicationController

  def contact_us

  end

  def about_us

  end

  def home
    @testimony = Testimony.order("created_at DESC").limit(3)
    @portofolio = Portofolio.order("created_at DESC").limit(3)
  end
end
