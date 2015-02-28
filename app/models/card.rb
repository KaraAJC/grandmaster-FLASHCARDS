class Card < ActiveRecord::Base
  belongs_to :deck

  validates :question, presence: true
  validates :answer, presence: true
  validates :deck_id, presence: true

  def check(response)
    Return true if response == self.answer
  end

end
