namespace :quote do
  desc "Get live quotes and update auctions"
  require 'yahoofinance'

  task :update => :environment do
    quotes = YahooFinance.get_standard_quotes ['NDAQ', 'GOOG', 'AAPL', 'MSFT', 'AMZN', 'EBAY']
    quotes.each {|key, obj|
      a= Auction.new :name => key, :exchange_rate => obj.lastTrade
      a.save
      puts "last trade for #{key} is #{obj.lastTrade}"
    }
  
  end
  
end