class CreateCritics < ActiveRecord::Migration[7.2]
  def change
    create_table :critics do |t|
      t.string :preferred_name
      t.string :surname
      t.string :organization_name

      t.timestamps
    end
  end
end
