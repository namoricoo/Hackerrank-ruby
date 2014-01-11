require 'resolv'

def resolv_ip_checker()
  str = "108.168.213.2" 
  case str
  when Resolv::IPv4::Regex
    puts "It's a valid IPv4 address."
  when Resolv::IPv6::Regex
    puts "It's a valid IPv6 address."
  else
    puts "It's not a valid IP address."
  end
end

def ipv6_address?(input)  
  input =~ /[[0-9a-fA-F]{0,4}\:]{7,7}[0-9a-fA-F]{1,4}/
end

def ipv4_address?(input)  
  input =~ /\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/ 
end

def ipv4_or_ipv6(input_string) 
 if ipv4_address?(input_string)
   'IPv4'
 elsif ipv6_address?(input_string)
   'IPv6'
 else
   'Neither'  
 end
end

def input_print(relative_path)   
    File.open(relative_path,"r") do |file|
      while data = file.gets        
        $stdout.puts data
      end         
    end
end

def stdout_ipv4_ipv6_neither(relative_path)
   File.open(relative_path,"r") do |file|
     total_lines = file.gets.to_i
     total_lines.downto(1) do |index|
       data = file.gets  
       $stdout.puts ipv4_or_ipv6(data)
     end             
    end
end

# /[\d{1,3}\.]{3}[\d{1,3}]/