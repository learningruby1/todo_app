class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      flash[:notice]="Todo was created successfully"
      redirect_to todo_path(@todo)
    else
      render 'new'
    end

  end

  def index
    @todos = Todo.all

  end

  def show
    @todo = Todo.find(params[:id])
  end
  private
  def todo_params
    # top level after require :todo and what the table has
    params.require(:todo).permit(:name, :description)

  end
end
