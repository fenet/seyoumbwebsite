class TestimoniesController < ApplicationController

  def index
    @testimonies = Testimony.order("created_at DESC")
  end

end
