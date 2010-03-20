# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mondocane_session',
  :secret      => '0563ab3259d447ae0cc2a1f6b09626c83db98a1ee09a0ecab28d43350550c955481bcab5b12ed3b6cd2ed380da173c0a61e7ff6f4ce27b75567ea05fc5383173'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
