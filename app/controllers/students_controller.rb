class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate 
    @s = set_student
    @s.active = !@s.active
    @s.save
    redirect_to student_path(@s)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

  

end