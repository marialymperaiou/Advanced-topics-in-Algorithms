local
  fun split [] x smaller = ([],[],smaller)
    | split (h::t) x true = 
      if (h >= x) then ([],(h::t),true)
      else 
        let
          val v = (split t x true)
        in
          (h::(#1 v), (#2 v), (#3 v))
        end
    | split (h::t) x false = 
      if (h < x) then ([], (h::t), false)
      else
        let
          val v = (split t x false)
        in
          (h::(#1 v), (#2 v), (#3 v))
        end

  fun lfy [] x smaller = []
    | lfy ls x smaller =
      let
        val v = (split ls x smaller)
      in
        (#1 v)::(lfy (#2 v) x  (not(#3 v)))
      end;
in
  fun listify ls x = 
    (lfy ls x true)
end