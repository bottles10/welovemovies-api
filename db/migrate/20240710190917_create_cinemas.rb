class CreateCinemas < ActiveRecord::Migration[7.2]
  def change
    create_table :cinemas do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :theater, null: false, foreign_key: true
      t.boolean :is_showing, default: false

      t.timestamps
    end
  end
end
