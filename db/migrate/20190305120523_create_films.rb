class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :f_title

      t.string :f_body


      t.timestamps
    end
  end
end
