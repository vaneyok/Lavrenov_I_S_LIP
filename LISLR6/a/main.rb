def drob(k)
	if k<1 then return 1.5
	else
		return 1+1.0/drob(k-1)
	end
end

def calc(precision)
	i=0
	dr=1.5
	while drob(i+1)-dr>precision||drob(i+=1)-dr<0
		i++
		dr=drob(i+=1)
	end
	return dr
end
