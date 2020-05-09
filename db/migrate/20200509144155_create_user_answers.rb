class CreateUserAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :user_answers do |t|
      t.references :question
      t.boolean :answer
      t.references :user
      t.references :trivium
      t.timestamps
    end
  end
end
