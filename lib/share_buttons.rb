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
  autoload :Pinterest, 'share_buttons/pinterest'

  HELPER_NAMES = %w(facebook twitter google_plus pinterest email link)

  def self.configure(&block)
    configuration = ShareButtons::Configuration.new
    block_given? ? yield(configuration) : configuration
  end

  class Configuration
    # Allow users to configure each provider class attributes by accessing
    # `config.provider_name.attribute`
    HELPER_NAMES.each do |helper|
      define_method(helper) do
        ShareButtons.const_get(helper.camelize)
      end
    end
  end
end
