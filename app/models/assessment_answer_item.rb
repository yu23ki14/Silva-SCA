class AssessmentAnswerItem < ApplicationRecord
  belongs_to :assessment_answer
  belongs_to :question_item
end
