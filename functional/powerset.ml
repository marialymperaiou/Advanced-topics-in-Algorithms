fun powerset [] = [[]]
  | powerset (h::t) =
      let
        fun cons h t = h :: t
        val pst = powerset t
      in
        (map (cons h) pst) @ pst
      end