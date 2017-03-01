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
    @question = Question.find(params[:id])
    @question.title = params[:question][:title]
    @question.body = params[:question][:title]
    if @question.save
      flash[:notice] = "Question was updated."
      redirect_to @question
    else
      flash.now[:alert] = "There was an error saving the Question. Please try again."
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    if @question.destroy
      flash[:notice] = "\"#{@question.title}\" was deleted successfully."
      redirect_to questions_path
    else
      flash.now[:alert] = "there was an error deleteing the question"
      render :show
    end
  end
end
