# frozen_string_literal: true

require 'addressable/uri'
require 'net/http'

require_relative 'ipgeobase/version'
require_relative '../lib/ipgeobase/ip_metadata'

module Ipgeobase
  class Error < StandardError; end

  def self.lookup(ip)
    uri = Addressable::URI.parse("http://ip-api.com/xml/#{ip}")
    begin
      response = Net::HTTP.get_response(uri)
    rescue StandardError
      false
    end
    Address.parse(response.body)
  end
end
