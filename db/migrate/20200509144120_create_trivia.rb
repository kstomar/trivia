class CreateTrivia < ActiveRecord::Migration[6.0]
  def change
    create_table :trivia do |t|
      t.references :user
      t.string :score
      t.timestamps
    end
  end
end
