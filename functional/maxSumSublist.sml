local
	fun maxSum locMax [] sum = locMax
  	  | maxSum locMax (h::t) sum =
  		if (h < 0) then if (sum + h < 0) then (maxSum locMax t 0)
  						else (maxSum locMax t (sum + h))
  		else if (sum + h > locMax) then (maxSum (sum + h) t (sum + h))
  			 else (maxSum locMax t (sum + h))
in
	fun maxSumSublist [] = 0
  	  | maxSumSublist lst = (maxSum 0 lst 0)
end