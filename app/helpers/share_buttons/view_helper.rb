module ShareButtons
  module ViewHelper
    ShareButtons::HELPER_NAMES.each do |medium|
      define_method(:"#{ medium }_share_button") do |*args|
        url, options = extract_url_and_options(*args)

        handler_class = ShareButtons.const_get(medium.camelize)
        button = handler_class.new(request, url, options)

        render partial: "share_buttons/#{ medium }", locals: { button: button }
      end
    end

    private

    def extract_url_and_options url = nil, options = nil
      unless options
        if url.kind_of?(Hash)
          options = url
          url = nil
        else
          options = {}
        end
      end
      [url, options]
    end
  end
end