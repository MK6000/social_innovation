# Be sure to restart your server when you modify this file.

if Rails.env.development?
  SocialInnovation::Application.config.session_store :cookie_store, key: Rails.application.config.database_configuration[Rails.env]["session_key"]
else
  SocialInnovation::Application.config.session_store :cookie_store, key: Rails.application.config.database_configuration[Rails.env]["session_key"],  :domain => ".#{Instance.last.domain_name}"
end

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# SocialInnovation::Application.config.session_store :active_record_store
