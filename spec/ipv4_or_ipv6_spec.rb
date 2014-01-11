require 'spec_helper'
require_relative '../lib/load_tab_file.rb'
require_relative '../lib/ipv4_or_ipv6.rb'
describe 'ipv4_or_ipv6' do
  it 'return IPV4 if an IPV4 I.P, address detected' do
    input = '127.255.255.255'
    output = 'IPv4'
    ipv4_or_ipv6(input).should == output
  end
  it 'return IPV6 if an IPV6 I.P, address detected' do
    input = 'fe80:fe80:200:5aee:feaa:20a2'
    output = 'IPv6'
    ipv4_or_ipv6(input).should == output
  end
  it 'return IPV6 if an IPV6 I.P, address detected' do
    input = '7'
    output = 'IPv6'
    ipv4_or_ipv6(input).should == output
  end
  it 'print input file to the screen' do
    file_name = 'input_data_ipv4_ipv6.txt'
    file = LoadTabFile.new(file_name).relative_path
    input_print(file)
  end
  it 'run loop to determine if ipv4, ipv6, or neither' do
    file_name = 'input_data_ipv4_ipv6.txt'
    file = LoadTabFile.new(file_name).relative_path
    stdout_ipv4_ipv6_neither(file)
  end
  
end




#((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])
