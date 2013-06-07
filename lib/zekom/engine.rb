module Zekom
  class Engine < ::Rails::Engine
    isolate_namespace Zekom
   
    initializer 'my_engine.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper Zekom::ApplicationHelper
      end
    end
  
  end
end
