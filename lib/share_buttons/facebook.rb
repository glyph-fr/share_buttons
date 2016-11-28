module ShareButtons
  class Facebook < ShareButtons::Base
    class_attribute :app_id

    private

    def share_url
      "https://www.facebook.com/dialog/share"
    end

    def url_options
      {
        display: 'popup', redirect_uri: redirect_uri,
        app_id: app_id, href: url
      }
    end

    def redirect_uri
      options[:redirect_uri] || request.original_url
    end

    def app_id
      @app_id ||= ENV['FACEBOOK_APP_ID'] || config.app_id
    end
  end
end
