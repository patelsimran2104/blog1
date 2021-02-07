class InfosController < ApplicationController
  def index
    @infos = Info.all
  end

  def show
    @info = Info.find(params[:id])
  end

  def new
    @info = Info.new
  end

  def create
    @info = Info.new(info_params)

    if @info.save
      redirect_to @info
    else
      render :new
    end
  end

  def edit
    @info = Info.find(params[:id])
  end
    
  def update
    @info = Info.find(params[:id])
    
    if @info.update(info_params)
      redirect_to @info
    else
      render :edit
    end
  end

  def destroy
    @info = Info.find(params[:id])
    @info.destroy
    redirect_to root_path
  end
    
  private
    def info_params
      params.require(:info).permit(:fullname, :address, :gender, :dob, :personalphoneNo, :personalemail, :hobby, :role, :worklocation, :professionalemail,:socialId, :professionalphoneNo)
    end
end
