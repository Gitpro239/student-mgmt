class StudentsController < ApplicationController
      layout 'admin'
      #  before_action :set_student, only: %i[show edit update destroy ]
      #  helper_method :formatted_date
    def index
      @q = Student.ransack(params[:id])
      @students = @q.result(distinct: true).page(params[:page])
      # @students = Student.all.page(params[:page])
      @filtered_students = @students.filter { |student| student.date_of_birth }
      @filtered_students_where = Student.where("date_of_birth > ?", 10)
      @filtered_students_order = Student.where("date_of_birth > ?", 15).order(age: :desc)
      @limited_students = Student.limit(5)
      @distinct_students_ages = Student.select(:date_of_birth).distinct

    end
    def new
      @student = Student.new
    end
    def create
      @student = Student.new(student_params
      # first_name: params[:student][:first_name],
      # last_name: params[:student][:last_name],
      # email: params[:student][:email]
      )
      if @student.save
        CrudNotificationMailer.create_notification(@student).deliver_now
        redirect_to students_path, notice: 'Student has been created successfully'
      else
        render :new
      end
    end
    def show
       @student = Student.find(params[:id])
    end
    def edit
       @student = Student.find(params[:id])
      #  date = formatted_date(@student.date_of_birth)
    end
    def update
       @student = Student.find(params[:id])
     if @student.update(student_params)
      redirect_to students_path, notice: 'Student has been updated successfully'
     else
      render :edit
     end
    end
    def destroy
       @student = Student.find(params[:id])
       @student.destroy
       redirect_to students_path, notice: 'Student has been deleted successfully'
    end
    def test
    end
    
    private
    def student_params
    # params.expect(student: [ :first_name, :last_name, :email, :date_of_birth, :address, :contact ])
    params.require(:student).permit(:first_name, :last_name, :email, :date_of_birth, :address, :contact, :profile_image)
    # params.require(:student).permit(:first_name, :last_name, :email, :date_of_birth, :address, :contact, posts_attributes: [:title, :content])
  end
    def set_student
      # @student = Student.find(params.expect(:id))
      @student = Student.find(params[:id])
    end

    def formatted_date(date)
      date.strftime('%A, %b, %d, %Y') if date.present?
    end

end