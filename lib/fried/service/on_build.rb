require "fried/core"
require "fried/call"
require "fried/dependency"

module Fried::Service
  module OnBuild
    def self.included(klass)
      klass.instance_eval do
        include ::Fried::Call::OnNew
        include Fried::Dependency::Schema
      end
    end

    def call
      raise NotImplementedError, "A service needs a #call method"
    end
  end
end
