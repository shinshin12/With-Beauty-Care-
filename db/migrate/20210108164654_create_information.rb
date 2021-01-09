class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.string :title, null: false
      t.text :sentence, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end