# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_auctions_on_rails_session',
  :secret      => '5bf614eb3e72138a5c40b39c6533f34c470801315342047ba8563d9af36432d3f59c9d09255639a0925d7be472333d047487ae20dd37044b973c7f5b472ed0ba'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
