class CreateQuestionGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :question_groups do |t|
      t.references :assessment, null: false, foreign_key: true
      t.string :title
      t.integer :form_type

      t.timestamps
    end
  end
end
