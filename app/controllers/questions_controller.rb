class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @questions = Questions.find(params[:id])
    @question.title = params[:question][:title]
    @question.body = params[:question][:title]
  end

  def destroy
  end
end
