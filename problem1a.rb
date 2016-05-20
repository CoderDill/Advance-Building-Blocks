def bubble_sort(n)
	loop do
		swapped = false
		(n.length-1).times do |i|
			if n[i] > n[i+1]
				n[i], n[i+1] = n[i+1], n[i]
				swapped = true
			end
		end
	break if not swapped
	end
	n
end