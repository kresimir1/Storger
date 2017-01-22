class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    if params[:search]
      @questions = Question.search(params[:search])
    else
      @questios = Question.all
    end
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user

    if @question.save
      redirect_to @question, notice: "Successfully added a new topic"
    else
      render 'new'
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to @question, notice: "Successfully edited a topic"
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to questions_path, notice: "Successfully deleted the topic"
  end

  private
    def question_params
      params.require(:question).permit(:title, :description, :user_id)
    end
end
