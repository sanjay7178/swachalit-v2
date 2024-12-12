# config/initializers/state_machine_patch.rb
require 'state_machine/integrations/base'

module StateMachine
  module Integrations
    class Base
      # Monkey-patch the locale_path method to use File.exist? instead of File.exists?
      def locale_path(path)
        path if File.exist?(path) # Replace deprecated File.exists? method
      end
    end
  end
end