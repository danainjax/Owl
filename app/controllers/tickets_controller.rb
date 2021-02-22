class TicketsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new
        @ticket = Ticket.new
    end

    def create
        # @ticket = Ticket.create(ticket_params)
        # @ticket.save
        #figure out how to associate the ticket with a user id and save it

        @ticket = current_user.tickets.build(ticket_params)
        if @ticket.save
            redirect_to @ticket
        else
            render :new
        end
    end

    def index
        if params[:user_id] && @user = User.find_by_id(params[:user_id])
            # @tickets = @user.tickets.most_comments.alpha
            @tickets = @user.tickets
        else
            # flash[:message] = "That task doesn't exist" if params[:]
            # @tickets = Ticket.most_comments.alpha
            @tickets = Ticket.all
        end
    end

    def show
       @ticket = Ticket.find_by(id: params[:id])
    end

    def edit
        @ticket = Ticket.find_by(id: params[:id])
        
    end

    def update
        @ticket = Ticket.find_by(id:params[:id])
        @ticket.update(ticket_params)
            redirect_to @ticket
    end

    private

    def ticket_params
        params.require(:ticket).permit(:number, :title, :description, :priority, :status, :user_id)
    end

end



