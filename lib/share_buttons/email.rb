module ShareButtons
  class Email < ShareButtons::Base
    def label
      'Partager par e-mail'
    end

    def title
      options[:title]
    end

  end
end
