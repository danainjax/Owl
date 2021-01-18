class AssignmentsController < ApplicationController

    def new
        #need to modify the code here to assign a task to a user 
        @assignment = Assignment.new
    end

    def create
        # binding.pry
        #need to modify the code to save the assignment of a task to a user 
        @assignment = current_user.assignments.build(assignment_params)
        
    end

    def index
        @assignments = Assignment.all
    end

    def show
        @assignment = Assignment.find_by(id: params[:id])
    end

    private

    def assignment_params
        params.require(:assignment).permit(:status, :user_id, :task_id)
    end
end
