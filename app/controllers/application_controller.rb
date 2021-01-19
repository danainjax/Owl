class ApplicationController < ActionController::Base
    #gives access to methods in the views
    helper_method :current_user, :logged_in?, :current_task, :redirect_if_not_logged_in

private
    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end

    def current_task
        @current_task ||= Task.find_by_id(session[:task_id]) if session[:task_id]
    end

    def current_assignment 
        @current_assignment ||= Assignment.find_by_id(session[:assignment_id]) if session[:assignment_id]
    end

    def logged_in?
        !!session[:user_id]
    end

    def redirect_if_not_logged_in
        redirect_to '/' if !logged_in?
    end

end
