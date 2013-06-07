module Zekom
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)
    
    def install
      template "initializer.erb", "config/initializers/zekom.rb"
      route "mount Zekom::Engine => '/zekom'"
    end
  
  end
end