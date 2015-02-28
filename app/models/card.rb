class Card < ActiveRecord::Base
  belongs_to :deck

  validates :question, presence: true
  validates :answer, presence: true
  validates :deck_id, presence: true

  def check(response)
    if response == self.answer
      return "CORRECT!"
    else
      return "WROONG!"
    end
  end

end
