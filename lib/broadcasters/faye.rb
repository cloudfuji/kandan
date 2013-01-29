module Broadcasters
  class Faye
    class << self
      def broadcast(channel, message)
        if defined?(FAYE_CLIENT)
          FAYE_CLIENT.publish channel, message
        else
          puts "OOPS! FAYE_CLIENT is not defined"
        end
      end

      def assets
        ["/remote/faye.js"]
      end
    end
  end
end
