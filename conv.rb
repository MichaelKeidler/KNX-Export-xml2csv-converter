require 'nokogiri'

xml = File.open( "ga.xml" )

doc = Nokogiri::XML(xml)

doc.css('GroupAddress').map do |node| 
  address = [node.attr('Address').to_i].pack('N').unpack('CCCC').join('/')
  puts "\"#{node.attr('Name')}\"\t\"#{address[2..-1]}\"\t\"\"\t\"\"\t\"\"\t\"#{node.attr('DPTs')}\"\t\"Auto\""  
end




  