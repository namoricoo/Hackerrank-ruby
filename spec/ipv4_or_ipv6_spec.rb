require 'spec_helper'
require_relative '../lib/ipv4_or_ipv6.rb'
describe 'ipv4_or_ipv6' do
  it 'return IPV4 if an IPV4 I.P, address detected' do
    input = '127.255.255.255'
    output = 'IPv4'
    ipv4_or_ipv6(input).should == output
  end
end
