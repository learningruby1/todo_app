class TodosController < ApplicationController
  before_action :set_todo, only: [:edit, :update, :show, :destroy]
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      flash[:notice]="Todo was created successfully"
      # does to show
      redirect_to todo_path(@todo)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @todo.update(todo_params)
      flash[:notice]= "Todo was successfully updated"
      # todo_path goes to show
      redirect_to todo_path(@todo)
    else
      render 'edit'
    end
  end

  def destroy
    @todo.destroy
    flash[:notice]= "Todo was successfully delete"
    # need to go to the index path
    redirect_to todos_path
  end
  private
  def todo_params
    # top level after require :todo and what the table has
    params.require(:todo).permit(:name, :description)
  end
  def set_todo
    @todo = Todo.find(params[:id])

  end
end
