class TodosController < ApplicationController
  def index
    todos = Todo.all.order(created_at: :desc)
    render json: { todos: todos }
  end

  def show
    todo = Todo.find(params[:id])
    render json: { todo: todo }
  end

  def create
    todo = Todo.create!(
      title: create_params[:title],
      is_done: false,
    )
    render json: { todo: todo }
  end

  private

  def create_params
    params.permit(:title)
  end
end
