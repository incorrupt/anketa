# Be sure to restart your server when you modify this file.

Anketa::Application.config.session_store :active_record_store, {
   key: '_anketa_session',
   expire_after: 24.hours
}

