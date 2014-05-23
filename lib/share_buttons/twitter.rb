module ShareButtons
  class Twitter < ShareButtons::Base
    private

    def share_url
      'https://twitter.com/home'
    end

    def url_options
      { status: status }
    end

    def status
      url
    end
  end
end