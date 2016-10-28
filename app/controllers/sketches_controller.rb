class SketchesController < ApplicationController
  before_action :set_post, only: [:show, :create, :update, :destroy]

  def index
    @sketches = Sketch.all
  end

  def show
  end

  # Sketch needs to be initialized without parameters or it'll ask for them
  # and raise an error. This is the way it's done in the scaffold.

  def new
    @sketch = Sketch.new
  end

  def edit
  end

  # Resources automatically maps :create to the POST verb, so
  # we magically end up here after submitting the 'new' form

  def create
    @sketch = Sketch.new(sketch_params)
    if @sketch.save
      redirect_to @sketch
    else
      render :new
    end
  end

  # Same happens with :update and :edit

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