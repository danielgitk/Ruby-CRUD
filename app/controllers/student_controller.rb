class StudentController < ApplicationController
  def index
    @student = Student.all # select * from student
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to action: "index"
    else
      render action: "new"
  end
  end

  def show
  end

  def edit
    @student = Student.find(params[:id]) #select * from student where id = 1
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(student_params)
      redirect_to action: "index"
    else
      render action: "edit"
    end
  end

  def delete
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to action: "index"
  end

  def student_params
    params.require(:student).permit(:name, :gender)
  end
end
