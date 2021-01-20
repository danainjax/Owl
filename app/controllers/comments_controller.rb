class CommentsController < ApplicationController

    def new
        @comment = Comment.new
    end

    def create
        @comment = current_user.comments.build(comment_params)
        if @commment.save
            redirect_to @comment
        else
            render :new
        end

    end

    def index
        Comment.all

    end

    def show
        @comment = Comment.find_by(id: params[:id])
        
    end

    def edit
        @comment = Comment.find_by(id: params[:id])
    end

    def update
        @comment = Comment.find_by(id:params[:id])
        @comment.update(comment_params)
            redirect_to @commment
    end

    private

    def commment_params
        params.require(:comment).permit(:content)
    end


end
