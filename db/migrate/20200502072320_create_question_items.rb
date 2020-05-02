class CreateQuestionItems < ActiveRecord::Migration[6.0]
  def change
    create_table :question_items do |t|
      t.references :question_group, null: false, foreign_key: true
      t.string :name
      t.integer :type

      t.timestamps
    end
  end
end
