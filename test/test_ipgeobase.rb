# frozen_string_literal: true

require 'test_helper'

class TestIpgeobase < Minitest::Test
  def test_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_ipgeobase_lookup
    stub_http_request(:get, 'http://ip-api.com/xml/8.8.8.8')
      .to_return(status: 200, body: File.read('test/fixtures/query.xml'))

    ip_meta = Ipgeobase.lookup('8.8.8.8')

    assert_equal('Montreal', ip_meta.city)
    assert_equal('Canada', ip_meta.country)
    assert_equal('CA', ip_meta.country_code)
    assert_equal(45.4995, ip_meta.lat)
    assert_equal(-73.5848, ip_meta.lon)
  end
end
