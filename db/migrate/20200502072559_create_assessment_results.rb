class CreateAssessmentResults < ActiveRecord::Migration[6.0]
  def change
    create_table :assessment_results do |t|
      t.string :title
      t.text :content
      t.string :label
      t.references :assessment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
