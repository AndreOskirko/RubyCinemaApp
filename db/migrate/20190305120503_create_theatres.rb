class CreateTheatres < ActiveRecord::Migration[5.2]
  def change
    create_table :theatres do |t|
      t.string :t_title

      t.string :t_body


      t.timestamps
    end
  end
end
