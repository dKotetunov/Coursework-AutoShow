class PositionsController < ApplicationController
  before_action :set_position, only: [:show, :edit, :update, :destroy]

  def index
    @positions = Position.all
  end

  def show
  end

  def new
    @position = Position.new
  end

  def edit
  end

  def create
    @position = Position.new(position_params)

    if @position.save
      redirect_to @position, notice: 'Position was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @position.update(position_params)
      redirect_to @position, notice: 'Position was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @position.destroy
    redirect_to positions_url, notice: 'Position was successfully destroyed.'
  end

  private
    def set_position
      @position = Position.find(params[:id])
    end

    def position_params
      params.require(:position).permit(:title)
    end
end
