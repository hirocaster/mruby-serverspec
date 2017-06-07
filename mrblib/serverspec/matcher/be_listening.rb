module Serverspec
  module Matchers
    class BeListeningMatcher < RSpec::Matchers::BaseMatcher

      def match(port)
        port.listening? @with, @local_address
      end

      def description
        message = 'be listening'
        message << " on #{@local_address}" if @local_address
        message << " with #{@with}" if @with
        message
      end

      RSpec::Matchers.define :be_listening, BeListeningMatcher
    end
  end
end
