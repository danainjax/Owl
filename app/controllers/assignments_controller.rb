class AssignmentsController < ApplicationController

    def new
        @assignment = Assignment.new
    end

    def create
        @assignment = current_user.assignment.build(assignment_params)
        if @assignment.save
            redirect_to @assignment
        else
            render :new
        end
    end

    private

    def assignment_params
        params.require(:assignment).permit(:status)
    end
end
