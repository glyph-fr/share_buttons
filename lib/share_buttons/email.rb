module ShareButtons
  class Email < ShareButtons::Base
    def label
      options.fetch(:label, 'Partager par e-mail')
    end

    def title
      options[:title]
    end

  end
end
