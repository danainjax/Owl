class CommentsController < ApplicationController

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.create(comment_params)
        redirect_to comment_path(@comment)

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

    def comment_params
        params.require(:comment).permit(:content, :task_id, :user_id)
    end


end
