class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.string :title
      t.text :description
      t.references :argument, foreign_key: true
      t.references :condition, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :value

      t.timestamps
    end
    add_index :votes, [:argument_id, :condition_id,:user_id], unique: true
  end
end
