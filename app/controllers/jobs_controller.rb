class JobsController < ApplicationController

before_action :redirect_if_not_logged_in

    def new
        @job = Job.new
    end

    def create
        @job = current_user.jobs.build(job_params)
        if @job.save
            redirect_to @job
        else
            render :new
        end
    end

    private

    def job_params
        params.require(:job).permit(:title, :description, :priority)
    end

end
