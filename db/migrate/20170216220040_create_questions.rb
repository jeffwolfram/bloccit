class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text :title
      t.text :body
      t.boolean :resolved

      t.timestamps
    end
  end
end
