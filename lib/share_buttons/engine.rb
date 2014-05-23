module ShareButtons
  class Engine < ::Rails::Engine
    isolate_namespace ShareButtons

    initializer 'include ShareButtons helpers in views' do |app|
      ActiveSupport.on_load(:action_view) do
        include(ShareButtons::ViewHelper)
      end
    end
  end
end
