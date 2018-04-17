def string_changer(str)
	arr = str.split
	a = arr.index(arr.max_by &:length )
	b = arr.index(arr.min_by {|x| x.length} )
	arr[a], arr[b] = arr[b], arr[a]
	arr.join(' ')
end	