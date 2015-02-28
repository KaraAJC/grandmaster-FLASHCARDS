class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.belongs_to :deck
      t.belongs_to :player
      t.boolean :number_correct
  end
 end
end
