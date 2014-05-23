module ShareButtons
  class Email < ShareButtons::Base
    def label
      'Partager par e-mail'
    end

    private

    def share_url
      'mailto:'
    end

    def url_options
      { subject: options[:title], body: url }
    end
  end
end