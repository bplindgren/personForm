class Genders < ActiveRecord::Migration[5.0]
  def change
    create_table :genders do |t|
      t.string :gender_type, { null: false }

      t.timestamps
    end
  end
end
