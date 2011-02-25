# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_alvorada_embalagens_session',
  :secret      => 'a7d4e2d3f7d97e51b387aa6d81d57bea2ea21e2c03464f78adc173e4af3df27e107e003dd47b88d50d79ab817fd87572b1ff4baa7983b83d9c0a79fdda2a7066'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
