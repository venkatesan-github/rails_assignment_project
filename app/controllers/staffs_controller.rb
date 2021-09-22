class StaffsController < ApplicationController

  before_action :set_staff, only: [:edit, :show, :update, :destroy]

  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.create(staff_params)
    if @staff.save
      flash[:success] = "Employee data created successfully!"
      redirect_to staff_path(@staff)
    else
      render 'new'
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    if @staff.update(staff_params)
      flash[:notice] = "Employee Data was successfully updated"
      redirect_to staff_path(@staff)
    else
      render 'edit'
    end
  end

  def index
    @staffs = Staff.all
  end

  def destroy
    @staff.destroy
    flash[:alert] = "Employee data was deleted successfully"
    redirect_to staffs_path
  end

  private

    def set_staff
      @staff = Staff.find(params[:id])
    end


    def staff_params
      params.require(:staff).permit(:name, :age, :gender, :designation)
    end

end