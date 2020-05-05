class QuestionGroup < ApplicationRecord
  belongs_to :assessment
  has_many :question_items

  enum form_type: {checkbox: 0, radio: 1, radios: 2, textarea: 2}
end
