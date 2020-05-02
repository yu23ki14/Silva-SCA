class CreateAssessments < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments do |t|
      t.string :neme
      t.string :uid

      t.timestamps
    end
  end
end
