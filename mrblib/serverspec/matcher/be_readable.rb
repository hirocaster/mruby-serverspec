module Serverspec
  module Matchers
    class BeReadableMatcher < RSpec::Matchers::BaseMatcher

      def match(file)
        file.readable?(@by_whom, @by_user)
      end

      def by(by_whom)
        @by_whom = by_whom
        self
      end

      def by_user(by_user)
        @by_user = by_user
        self
      end

      RSpec::Matchers.define :be_readable, BeReadableMatcher
    end
  end
end
