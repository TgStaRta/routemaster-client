require 'routemaster/client/connection'

module Routemaster
  class Client
    module Backends
      class Synchronous

        class << self
          def configure(options)
            new(options)
          end
        end

        def initialize(options)
          @conn = Routemaster::Client::Connection.new(options)
        end

        def send_event(event, topic, callback, timestamp = nil)
          @conn.send_event(event, topic, callback, timestamp)
        end
      end
    end
  end
end
