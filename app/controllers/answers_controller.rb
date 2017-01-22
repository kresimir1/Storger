
class AnswersController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    @answer.user = current_user
    if @answer.save
    flash[:notice] = "Comment saved successfully."
    redirect_to question_path(@question)
    else
      flash[:alert] = "Failed to save comment."
      render 'questions/show'
    end

  end


  def destroy
   @question = Question.find(params[:question_id])
   @answer = @question.answers.find(params[:id])
   @answer.destroy
   flash[:notice] = "Comment deleted successfully."
   redirect_to question_path(@question)
  end

  private
    def answer_params
      params.require(:answer).permit(:body, :user_id, :question_id )
    end
end
