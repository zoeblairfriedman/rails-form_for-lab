require 'pry'

class StudentsController < ApplicationController

def index
end

def show
    @student = Student.find_by(id: params[:id])
end

def new
    @student = Student.new
end

def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
end

def edit
    @student = Student.find_by(id: params[:id])
end

def update
    @student = Student.update(student_params)
    redirect_to student_path(@student)
end

def destroy
end

private

def student_params
  params.require(:student).permit(:first_name, :last_name)
end

end