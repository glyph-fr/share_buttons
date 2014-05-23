module ShareButtons
  class Facebook < ShareButtons::Base
    cattr_accessor :app_id

    private

    def share_url
      "https://www.facebook.com/dialog/share"
    end

    def url_options
      {
        display: 'popup', redirect_uri: request.original_url,
        app_id: config.app_id, href: url
      }
    end
  end
end