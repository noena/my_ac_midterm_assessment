class DoctorsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find_by(username: params[:username])
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctors_path
    else
      render 'new'
    end
  end

  def edit
    @doctor = Doctor.find_by(username: params[:username])
  end

  def update
    @doctor = Doctor.find_by(username: params[:username])
    if @doctor.update_attributes(doctor_params)
      redirect_to doctor_path(@doctor)
    else
      render 'edit'
    end
  end

  def destroy
    @doctor = Doctor.find_by(username: params[:username])
    @doctor.destroy
    redirect_to doctors_path
  end

  def list_female
    @doctors = Doctor.list_female
  end

  def list_male
    @doctors = Doctor.list_male
  end

  private
    def doctor_params
      params.require(:doctor).permit(:username, :address, :gender)
    end
end
