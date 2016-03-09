class StudentController < ApplicationController
  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'student was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
  end
end
