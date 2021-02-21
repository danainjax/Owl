class AssignmentsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new
        @assignment = Assignment.new
    end

    def create
        @assignment = Assignment.create(assignment_params)
        redirect_to assignment_path(@assignment)
    end

    def index
        if params[:user_id] && @user = User.find_by_id(params[:user_id])
            @assignments = @user.assignments
        else
            @assignments = Assignment.all
        end
    end

    def show
        @assignment = Assignment.find_by(id: params[:id])
    end

    private

    def assignment_params
        params.require(:assignment).permit(:status, :user_id, :ticket_id)
    end
end
