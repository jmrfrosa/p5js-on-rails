class SketchesController < ApplicationController
  before_action :set_post, only: [:show, :create, :update, :destroy]

  def index
    @sketches = Sketch.all
  end

  def show
  end

  def edit
  end

  def create
    @sketch = Sketch.new(sketch_params)
  end

  def update
    if @sketch.update(sketch_params)
      redirect_to @sketch
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to sketches_url
  end

  private

    def set_post
      @sketch = Sketch.find(params[:id])
    end

    def sketch_params
      params.require(:sketch).permit(:title, :description, :code)
    end

end