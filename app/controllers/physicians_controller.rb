class PhysiciansController < ApplicationController
  before_action :set_physician, only: [:edit, :show, :udpate, :destroy]

  def index
    @physician = Physician.all
  end

  def show
  end

  def new
    @physician = Physician.new
  end

  def create
    @physician = Physician.new(appointment_params)
    if @physician.save
      redirect_to appointment_path
    elsif
      render :new
    end
  end

  def edit
  end

  def udpate
    if @physician.update(physician_params)
    elsif
      render :edit
  end

  def destroy
    @physician.destroy
    redirect_to physician_path
  end

  private
  
  def set_phyician
    @physician = Physician.find(params[:id])
  end
  
  def physician_params
    params.require(:physician).permit(:appointment, :patient)
  end
end
