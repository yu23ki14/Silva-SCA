class CreateAssessmentAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :assessment_answers do |t|
      t.string :uid
      t.references :assessment, null: false, foreign_key: true
      t.references :assessment_result, null: false, foreign_key: true

      t.timestamps
    end
  end
end
