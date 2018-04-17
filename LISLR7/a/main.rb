def create_files
	str=[]
	
	rand(50).times{str.push(rand(100).to_s)}
	
	File.open('F.txt', 'w') do |f|
		str.each {|val| f.puts(val)}
	end
	File.open('H.txt', 'w') do |h|
		str.each {|val| h.puts(val) if (((val.to_i % 3)==0)&&((val.to_i % 7)!=0))}
	end
end