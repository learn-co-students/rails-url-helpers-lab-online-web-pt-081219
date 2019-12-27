# frozen_string_literal: true

class StudentsController < ApplicationController
  before_action :set_student, only: %i[show activate]

  def index
    @students = Student.all
  end

  def show; end

  def activate
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end
