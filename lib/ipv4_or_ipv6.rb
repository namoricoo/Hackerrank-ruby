def ipv4_or_ipv6(input_string) 
 if input_string =~ /\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/
   'IPv4'
 else
   'Neither'  
 end
end
