class BallotItem < ActiveRecord::Base
  belongs_to :ballot
  has_many :options
end
