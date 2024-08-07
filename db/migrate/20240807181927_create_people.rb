class CreatePeople < ActiveRecord::Migration[7.2]
  def change
    create_table :people do |t|
      t.references :position, null: false, foreign_key: true
      t.string :stage
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :note

      t.timestamps
    end
  end
end
