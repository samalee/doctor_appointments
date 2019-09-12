class PatientsController < ApplicationController
  before_action :set_patient, only: [:edit, :show, :udpate, :destroy]

  def index
    @patient = Patients.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to patient_path
    elsif
      render :new
    end
  end

  def edit
  end

  def udpate
    if @appointment.update(patient_params)
    elsif
      render :edit
  end

  def destroy
    @patient.destroy
    redirect_to patient_path
  end

  private
  
  def set_patient
    @patient = Patient.find(params[:id])
  end
  
  def patient_params
    params.require(:patient).permit(:physician, :appointment)
  end
end
