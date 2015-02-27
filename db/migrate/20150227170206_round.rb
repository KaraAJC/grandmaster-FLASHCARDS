class Round < ActiveRecord::Migration
  def change
    create_table do |t|
      t.belongs_to :deck
      t.belongs_to :player
      t.boolean :number_correct
  end
end
