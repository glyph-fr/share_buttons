require 'zeroclipboard-rails'
require "share_buttons/engine"
require 'active_support/dependencies/autoload'

module ShareButtons
  extend ActiveSupport::Autoload

  autoload :Base, 'share_buttons/base'
  autoload :Facebook, 'share_buttons/facebook'
  autoload :Twitter, 'share_buttons/twitter'
  autoload :GooglePlus, 'share_buttons/google_plus'
  autoload :Email, 'share_buttons/email'
  autoload :Link, 'share_buttons/link'
end
