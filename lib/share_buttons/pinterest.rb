module ShareButtons
  class Pinterest < ShareButtons::Base
    private

    def share_url
      "https://www.pinterest.com/pin/create/button"
    end

    def url_options
      { media: options[:image_url], url: url }
    end
  end
end
