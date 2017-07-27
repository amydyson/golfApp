class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :h1
      t.integer :h2
      t.integer :h3
      t.integer :h4
      t.integer :h5
      t.integer :h6
      t.integer :h7
      t.integer :h8
      t.integer :h9
      t.integer :h10
      t.integer :h11
      t.integer :h12
      t.integer :h13
      t.integer :h14
      t.integer :h15
      t.integer :h16
      t.integer :h17
      t.integer :h18
      t.references :golfer, foreign_key: true
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
