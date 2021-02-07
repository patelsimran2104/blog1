class InformationsController < ApplicationController
  def index
    @informations = Information.all
  end

  def show
    @information = Information.find(params[:id])
  end

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(informations_params)
    if @information.save
      redirect_to @information
    else
      render :new
    end
  end

  def edit
    @information = Information.find(params[:id])
  end

  def update
    @information = Information.find(params[:id])

    if @information.update(information_params)
      redirect_to @information
    else
      render :edit
    end
  end

  def destroy
    @information = Information.find(params[:id])
    @information.destroy
    redirect_to root_path
  end

  private
  def informations_params
    params.require(:information).permit(:fullname, :address, :role, :gender)
  end
end