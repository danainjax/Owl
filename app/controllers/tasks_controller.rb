class TasksController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new
        @task = Task.new
    end

    def create
        @task = current_user.tasks.build(task_params)
        if @task.save
            redirect_to @task
        else
            render :new
        end
    end

    def index
        @tasks = Task.all 
    end

    def show
       @task = Task.find_by(id: params[:id])
    end

    def edit
        @task = Task.find_by(id: params[:id])
        
    end

    def update
        @task = Task.find_by(id:params[:id])
        @task.update

    end

    private

    def task_params
        params.require(:task).permit(:title, :description, :priority)
    end

end

