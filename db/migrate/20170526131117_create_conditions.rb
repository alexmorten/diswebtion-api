class CreateConditions < ActiveRecord::Migration[5.0]
  def change
    create_table :conditions do |t|
      t.string :title
      t.text :description
      t.references :topic, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
