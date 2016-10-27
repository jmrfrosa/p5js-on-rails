class PagesController < ApplicationController

  def show
    @width = 800
    @height = 600
  end

  def update
    @size = params[:size]
    case @size.fetch(:size)
    when "640x480"
      @width = 640
      @height = 480
    when "800x600"
      @width = 800
      @height = 600
    when "1024x768"
      @width = 1024
      @height = 768
    end
  end

end