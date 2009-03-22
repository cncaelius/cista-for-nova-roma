class Option < ActiveRecord::Base
  belongs_to :ballot_item
  has_many :votes
end
