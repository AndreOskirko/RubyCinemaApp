class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.belongs_to :theatre, foreign_key: true
      t.belongs_to :film, foreign_key: true
      t.string :time

      t.timestamps
    end
  end
end
