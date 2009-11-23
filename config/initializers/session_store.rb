# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_portfolio_session',
  :secret      => 'b6ba93768e96102b1c93b892107164e45ae8de22ee055e35d484a12b5af06a4557b089a7479d935afd3110270fdb35f0657a1b120bd15d181b91e595cfeb47f3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
