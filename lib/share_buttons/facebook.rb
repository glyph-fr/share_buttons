module ShareButtons
  class Facebook < ShareButtons::Base
    def app_id
      ENV['FACEBOOK_KEY']
    end

    private

    def share_url
      "https://www.facebook.com/dialog/share"
    end

    def url_options
      {
        display: 'popup', redirect_uri: request.original_url,
        app_id: app_id, href: url
      }
    end
  end
end