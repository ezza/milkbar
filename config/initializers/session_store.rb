# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_milkbar_session',
  :secret      => '86cf21695d91cacdaf7aea5619735c4e2d69d3d5435883afa467fde462e23503fd2ab5d7c5e5a13585a994d865308a81466ea2f376a8b3cf69daf33436985a0b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
