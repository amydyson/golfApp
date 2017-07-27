class CreateTournaments < ActiveRecord::Migration[5.1]
  def change
    create_table :tournaments do |t|
      t.date :date
      t.string :course

      t.timestamps
    end
  end
end
