class CreatePhones < ActiveRecord::Migration[7.0]
  def change
    create_table :phones do |t|
      t.string :maker
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :app, null: false, foreign_key: true

      t.timestamps
    end
  end
end
