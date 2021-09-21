class FieldsController < ApplicationController

  before_action :set_field, only: [:edit, :show, :update, :destroy]

  def new
    @field = Field.new
  end

  def create
    @field = Field.create(field_params)
    if @field.save
      flash[:success] = "Employee data created successfully!"
      redirect_to field_path(@field)
    else
      render 'new'
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    if @field.update(field_params)
      flash[:notice] = "Employee Data was successfully updated"
      redirect_to field_path(@field)
    else
      render 'edit'
    end
  end

  def index
    @fields = Field.all
  end

  def destroy
    @field.destroy
    flash[:alert] = "Employee data was deleted successfully"
    redirect_to fields_path
  end

  private

    def set_field
      @field = Field.find(params[:id])
    end


    def field_params
      params.require(:field).permit(:name, :age, :gender, :designation)
    end

end