class Participant < ActiveRecord::Base
  has_many :results
  attr_accessible :name, :age, :gender
end
