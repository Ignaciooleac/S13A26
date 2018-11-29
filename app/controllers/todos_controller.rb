class TodosController < ApplicationController
   def index
     @todos = Todo.all
    end

    def new
      @todo = Todo.new
    end

    def create
        @post = Todo.new(params[:post])
        @post.save
        redirect_to todos_path
    end

    private
    def post_params
        params.require(:post).permit(:description, :completed)
    end
end
