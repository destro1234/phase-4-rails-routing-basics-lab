class StudentsController < ApplicationController

    def index
        render json: Student.all
    end

    def grades
        students_by_grades = Student.order(grade: :desc)
        render json: students_by_grades
    end

    def highest_grade
        render json: Student.order(grade: :desc).first
    end
end
