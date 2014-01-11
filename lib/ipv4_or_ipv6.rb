def ipv4_or_ipv6(input_string) 
 if input_string =~ /[\d{1,3}\.]{3}[\d{1,3}]/
   'IPv4'
 elsif ipv6_address?(input_string)
   'IPv6'
 else
   'Neither'  
 end
end

def ipv6_address?(input)
  input =~ /[[0-9a-fA-F]{0,4}\:]{5,7}[0-9a-fA-F]{0,4}/
end
