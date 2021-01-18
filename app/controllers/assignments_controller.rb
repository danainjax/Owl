class AssignmentsController < ApplicationController

    def new
        #need to modify the code here to assign a task to a user 
        @assignment = Assignment.new
    end

    def create
        #need to modify the code to save the assignment of a task to a user 
        @assignment = current_user.assignments.build(assignment_params)
        if @assignment.save
            redirect_to @assignment
        else
            render :new
        end
    end

    def index
        @assignments = Assignment.all
    end

    private

    def assignment_params
        params.require(:assignment).permit(:status)
    end
end
