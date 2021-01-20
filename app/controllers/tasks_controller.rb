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
        if params[:user_id] && @user = User.find_by_id(params[:user_id])
            @tasks = @user.tasks
        else
            # flash[:message] = "That task doesn't exist" if params[:]
        @tasks = Task.all 
        end
    end

    def show
       @task = Task.find_by(id: params[:id])
    end

    def edit
        @task = Task.find_by(id: params[:id])
        
    end

    def update
        @task = Task.find_by(id:params[:id])
        @task.update(task_params)
            redirect_to @task
    end

    private

    def task_params
        params.require(:task).permit(:title, :description, :priority)
    end

end

