class Auction < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :exchange_rate
  
  cattr_reader :per_page
  @@per_page = 5
end
