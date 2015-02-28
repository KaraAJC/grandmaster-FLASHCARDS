class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  def update_correct
    self.correct += 1
  end

end
