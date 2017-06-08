module Serverspec::Type
  class Base
    
    attr_reader :name
    
    def initialize(name=nil, options = {})
      @name    = name
      @options = options
      @runner  = Serverspec::Runner
    end

    def to_s
      type = self.class.to_s.split(':')[-1]
      type.gsub!(/([a-z\d])([A-Z])/, '\1 \2')
      type.capitalize!
      %Q!#{type} "#{@name}"!
    end

    def inspect
      to_s
    end

    def to_ary
      to_s.split(" ")
    end
  end
end
