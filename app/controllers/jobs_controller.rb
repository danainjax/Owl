class JobsController < ApplicationController

before_action :redirect_if_not_logged_in

    def new
        @job = Job.new
    end

    def create
        @job = Job.new
        @job.save
    end

end
