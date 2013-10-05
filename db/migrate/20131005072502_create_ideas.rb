class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.integer :votes
      t.string :url
      t.string :description

      t.timestamps
    end
  end
end
