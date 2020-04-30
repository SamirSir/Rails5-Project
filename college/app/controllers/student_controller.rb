class StudentController < ApplicationController
	before_action :set_student, only: [ :show, :edit, :update, :destroy ]


	def index
		@student = Student.all
		# detail ... .order('created_at DESC')
		# passing accessability to Student table to index.html.erb through the object collection  students
	end 

	def sample
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		if @student.save 
			redirect_to @student, notice: "Information saved successfully "
		else
			render :sample, alert: "Your information wasnt saved! "
		end
	end

	def show 
		
	end

	def edit
		
	end

	def update
		if @student.update(student_params)
			redirect_to @student, notice: " Your post was updated successfully" 
		else
			render :edit, alert: "Your detail wasn't updated!"
		end
	end

	def destroy
		@student.destroy

		redirect_to student_path, notice: "One post deleted "

	end

	private 

	def set_student
		@student = Student.find(params[:id])
	end
 
	def student_params
		params.require(:student).permit(:name, :address)
	end

end
 