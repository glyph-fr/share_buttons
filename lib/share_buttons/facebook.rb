module ShareButtons
  class Facebook < ShareButtons::Base
    cattr_accessor :app_id

    private

    def share_url
      "https://www.facebook.com/dialog/share"
    end

    def url_options
      {
        display: 'popup', redirect_uri: redirect_uri,
        app_id: config.app_id, href: url
      }
    end

    def redirect_uri
      options[:redirect_uri] || request.original_url
    end

  end
end
