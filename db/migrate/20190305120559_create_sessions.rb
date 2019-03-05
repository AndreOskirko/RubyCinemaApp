class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :theatre

      t.string :film

      t.string :time


      t.timestamps
    end
  end
end
