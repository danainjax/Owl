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
        # binding.pry
        @user = User.find_or_create_by(email: auth['email']) do |u|
          
          u.username = auth['info']['name']
          u.email = auth['info']['email']
          u.image = auth['info']['image']
          u.password = SecureRandom.hex(10)
        end
        if @user.save
        session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            redirect_to '/'
        end
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


