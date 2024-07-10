class CreateTheaters < ActiveRecord::Migration[7.2]
  def change
    create_table :theaters do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
