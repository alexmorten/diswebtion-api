class CreateArguments < ActiveRecord::Migration[5.0]
  def change
    create_table :arguments do |t|
      t.string :title
      t.text :description
      t.references :side, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
