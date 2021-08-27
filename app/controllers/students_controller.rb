class StudentsController < ApplicationController
  before_action :set_student, only: [:update, :destroy, :edit, :show]
  
  def index
    @students = Student.all.order(first_name: :asc)
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if params[:Retour]
     render :new
    else
      if @student.save
        flash[:notice] = " Eleve ajoute avec succes" 
        redirect_to students_path
      else
        render new_student_path
      end
    end
  end
  
  def confirm
    @student = Student.new(student_params)
    render :new if @student.invalid?
    
  end

  def destroy
     flash[:danger] = " Eleve supprime" 
     redirect_to students_path if @student.destroy
  end

  def show
  end

  def edit
  end
 
  def update
    if @student.update(student_params)
      flash[:notice] = " Eleve modifie avec succes" 
      redirect_to student_path
    else
      render :edit 
    end
  end
  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :matricule, :sexe, :birth_date)
  end
  def set_student
    @student = Student.find(params[:id])
  end
end
