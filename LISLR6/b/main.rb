def drob(k)
	if k<1 then return 1.5
	else
		return 1+1.0/drob(k-1)
	end
end

def calc(precision)
  list = Enumerator.new do |calculating|
		for i in 1..100 do
			calculating << drob(i)
		end
	end
	prev=list.next
	while list.peek-prev>precision||list.peek-prev<0 
	prev=list.next
	end
	return list.peek
end