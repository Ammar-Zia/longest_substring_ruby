str1="baa"
str2="ababaa"
st1_arr=[nil]+str1.scan(/\w/)
st2_arr=[nil]+str2.scan(/\w/)

dp_arr=Array.new(st1_arr.length){|i| i=Array.new(st2_arr.length,0)}
p st2_arr
p st1_arr
p dp_arr

str_no=-1
str_ind=-1
str_len=-1

(1...st1_arr.length).each do |i|

	(1...st2_arr.length).each do |j|

		if st1_arr[i]==st2_arr[j]
			dp_arr[i][j]=dp_arr[i-1][j-1]+1
			if dp_arr[i][j]>str_len
				str_len=dp_arr[i][j]
				str_ind=i
			end
			#p dp_arr[i][j]
		end

	end
end

p dp_arr
p str_ind
p str_len
p str1[str_ind-str_len...str_ind]
