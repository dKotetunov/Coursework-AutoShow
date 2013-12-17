class ContactInformationsController < ApplicationController
    before_action :set_information, only: [:show, :edit, :update, :destroy]

  def index
    @informations = ContactInformation.all
  end

  def show
  end

  def new
    @information = ContactInformation.new
  end

  def edit
  end

  def create
    @information = ContactInformation.new(information_params)

    if @information.save
      redirect_to @information, notice: 'Contact information was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @information.update(information_params)
      redirect_to @information, notice: 'Contact information was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @information.destroy
    redirect_to contact_informations_url, notice: 'Contact information was successfully destroyed.'
  end

  private
  
  def set_information
    @information = ContactInformation.find(params[:id])
  end

  def information_params
    params.require(:contact_information).permit(:person_id, :phone, :address)
  end
end
