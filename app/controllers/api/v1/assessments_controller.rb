class Api::V1::AssessmentsController < ApiController
  def show
    assessment = Assessment.includes(question_groups:[:question_items]).find_by(uid: params[:id]).as_json(
      include: {
        question_groups: {
          include: :question_items
        }
      }
    )
    assessment["question_groups"].sort_by! { |g| g["created_at"] }
    render json: assessment, status: 200
  end
end
