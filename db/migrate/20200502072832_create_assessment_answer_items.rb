class CreateAssessmentAnswerItems < ActiveRecord::Migration[6.0]
  def change
    create_table :assessment_answer_items do |t|
      t.references :assessment_answer, null: false, foreign_key: true
      t.references :question_item, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
