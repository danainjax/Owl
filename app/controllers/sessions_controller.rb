class SessionsController < ApplicationController

    def home

    end


    def create
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:message] = "Incorrect login, please try again"
            redirect_to '/login'
        end
    end

    def facebook
        user = User.find_or_create_by(uid: auth['uid']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
            u.image = auth['info']['image']
          end
       
          session[:user_id] = user.id
       
          redirect_to user_path(user)
    end 

    def destroy
        session.clear
        redirect_to root_path
    end

    private
 
  def auth
    request.env['omniauth.auth']
  end
end


