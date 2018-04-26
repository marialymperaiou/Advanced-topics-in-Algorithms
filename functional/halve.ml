fun halve lst =
  let
    fun halve_tr nil acc = acc
      | halve_tr [x] (l, r) = (x::l, r) 
      | halve_tr (a::b::cs) (l, r) = halve_tr cs (a::l, b::r) 
  in
    halve_tr lst (nil, nil)
  end;