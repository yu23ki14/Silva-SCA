class CreateAssessments < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments do |t|
      t.string :name
      t.string :uid
      t.string :label
      t.timestamps
    end
  end
end
