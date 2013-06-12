module Zekom
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)
    
    def install
      template "initializer.erb", "config/initializers/zekom.rb"
      route "mount Zekom::Engine => '/zekom'"
    end

    def add_assets
      css_manifest = 'app/assets/stylesheets/application.css'

      if File.exist?(css_manifest)
        insert_into_file css_manifest, "\n *= require 'zekom/zekom'", :after => "require_self"
      end 
    end
  
  end
end