module Api
  module Gnews
    module Get
      class Base
        include HTTParty
        attr_reader :base_url, :parameters, :default_headers
        def initialize(parameters = {})
          @base_token = ENV['gnews_api_key']
          @base_url = ENV['gnews_url'] + "?token=" + @base_token
          @parameters = parameters
          @default_headers = { 'Accept' => "application/json"}
        end

        def self.call(*args, &block)
          new(*args, &block).call
        end

      end
    end
  end
end
