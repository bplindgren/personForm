class People < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :first_name, { null: false }
      t.string :last_name, { null: false }
      t.string :gender, { null: false }
      t.string :address, { null: false }
      t.string :city, { null: false }
      t.string :state, { null: false }

      t.timestamps
    end
  end
end
