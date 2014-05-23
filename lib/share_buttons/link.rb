module ShareButtons
  class Link < ShareButtons::Base
    def label
      'Copier le lien'
    end

    def dom_id
      @dom_id ||= "share-buttons-link-#{ seed }"
    end

    private

    def seed
      (Time.now.to_f * 10**5).to_i.to_s
    end
  end
end