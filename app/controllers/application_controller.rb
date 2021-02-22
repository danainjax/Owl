class ApplicationController < ActionController::Base
    #gives access to methods in the views
    helper_method :current_user, :logged_in?, :redirect_if_not_logged_in, :currrent_ticket

private
    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end


    def current_assignment 
        @current_assignment ||= Assignment.find_by_id(session[:assignment_id]) if session[:assignment_id]
    end

    def current_ticket
        @current_ticket ||= Ticket.find_by_id(session[:ticket_id]) if session[:ticket_id] 
    end

    def logged_in?
        !!session[:user_id]
    end

    def redirect_if_not_logged_in
        redirect_to '/' if !logged_in?
    end

end
