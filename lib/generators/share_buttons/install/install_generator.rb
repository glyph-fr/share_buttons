require 'fileutils'

module ShareButtons
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    desc "Share Buttons install generator"

    def welcome
      say "Installing Share Buttons ..."
    end

    def copy_initializer_file
      say "Installing default initializer template"
      copy_file "initializer.rb", "config/initializers/share_buttons.rb"
    end

    def copy_views
      folder = %w(app views share_buttons)

      source = File.join('..', '..', '..', '..', '..', *folder)
      source_dir = File.expand_path(source, __FILE__)
      dest_dir = Rails.root.join(*folder)

      print "Copying share buttons views to #{ dest_dir } ... "
      FileUtils.cp_r(source_dir, dest_dir)
      puts 'done !'
    end
  end
end
