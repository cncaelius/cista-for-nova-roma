class Ballot < ActiveRecord::Base
  belongs_to :election
  has_many :ballot_items
end
