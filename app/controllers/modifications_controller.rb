class ModificationsController < ApplicationController
  before_action :set_modification, only: [:show, :edit, :update, :destroy]

  def index
    @modifications = Modification.all
  end

  def show
  end

  def new
    @modification = Modification.new
  end

  def edit
  end

  def create
    @modification = Modification.new(modification_params)

    if @modification.save
      redirect_to @modification, notice: 'Modification was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @modification.update(modification_params)
      redirect_to @modification, notice: 'Modification was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @modification.destroy
    redirect_to modifications_url, notice: 'Modification was successfully destroyed.'
  end

  private
    def set_modification
      @modification = Modification.find(params[:id])
    end

    def modification_params
      params.require(:modification).permit(:car_id, :length, :width, :height, :seats, :weight, :max_speed, :type_of_engine, :engine_capacity, :fuel_supply_system, :fuel_consumption)
    end
end
