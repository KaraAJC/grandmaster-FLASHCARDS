class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  def update_correct
    self.number_correct += 1
    self.save
  end

end
