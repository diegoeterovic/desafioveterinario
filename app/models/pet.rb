class Pet < ApplicationRecord
  
  has_many :pet_histories
  belongs_to :client
  
  def to_s
    name
  end

  def history_count
    #TODO-implement
  end

  def avg_weight
    #TODO-implement
  end

  def avg_height
    #TODO-implement
  end

  def max_weight
    #TODO-implement
  end

  def max_height
    #TODO-implement
  end

end
