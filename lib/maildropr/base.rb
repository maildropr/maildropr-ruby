require "httparty"
require "multi_json"
require "hashie/mash"

module MailDropr

  class Base
    attr_accessor :api_key, :base_uri

    def initialize(options = {})
      @api_key = options.fetch(:api_key) { raise ArgumentError.new(":api_key is required to initialize MailDropr::Base") }
      @base_uri = options.fetch(:base_uri) { "https://send.maildropr.com/api" }
    end


    def add_subscriber(list_id, options = {})
      post("/lists/#{list_id}/subscribers", options)
    end

    private 

    def post(resource, params)
      options = { :body => params }
      resp = HTTParty.post(base_uri + resource, options)
      return Hashie::Mash.new MultiJson.load(resp.body)
    end

    def get(resource)
      resp = HTTParty.get(base_uri + resource)
      return Hashie::Mash.new MultiJson.load(resp.body)
    end

  end

end