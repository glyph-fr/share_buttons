module ShareButtons
  class Base
    attr_accessor :request, :url, :options

    def initialize(request, url, options)
      @request = request
      @url = url || request.original_url
      @options = options
    end

    def href
      [share_url, url_options.to_param].join('?')
    end

    def label
      options.fetch(:label, "Partager sur #{ medium_name }")
    end

    def medium_name
      self.class.name.demodulize.underscore.humanize
    end

    private

    def share_url
      raise 'Implement #share_url in subsclass'
    end

    def url_options
      {}
    end

    # More explicit shortcut to access class attributes
    def config
      self.class
    end
  end
end
