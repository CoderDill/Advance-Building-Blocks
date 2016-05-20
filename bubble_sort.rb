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

def bubble_sort_by(n)
	loop do
		swapped = false
		(n.length-1).times do |i|
			if yield(n[i], n[i+1]) > 0
				n[i], n[i+1] = n[i+1], n[i]
				swapped = true
			end
		end
		break if not swapped
	end
	n
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
	left.length - right.length
end