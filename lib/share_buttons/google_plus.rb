module ShareButtons
  class GooglePlus < ShareButtons::Base
    private

    def share_url
      'https://plus.google.com/share'
    end

    def url_options
      { url: url }
    end
  end
end