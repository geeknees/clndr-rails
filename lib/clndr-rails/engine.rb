class Clndr
    class Engine < ::Rails::Engine
      #  add helpers
      initializer 'clndr.action_controller' do |app|
        ActiveSupport.on_load :action_controller do
          ::ActionController::Base.send(:include, Clndr::Helpers)
        end
      end
    end
end
