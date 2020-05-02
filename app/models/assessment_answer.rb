class AssessmentAnswer < ApplicationRecord
  belongs_to :assessment
  belongs_to :assessment_result
end
