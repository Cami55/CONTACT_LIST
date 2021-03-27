class EmployeesController < ApplicationController
  skip_before_action only: %i[index show create new edit update]
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to @employee
    else
      render :new
    end
  end

   def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_params)
    redirect_to @employee
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path(root_path)
  end

  private

  def employee_params
    params.require(:employee).permit(:forename, :surname, :address, :email, :department)
  end
end
