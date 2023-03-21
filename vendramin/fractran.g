fractran := function(n, lst, bound)
  local i, j, seq;

  seq := [];
  for i in [1..bound] do
    for j in [1..Size(lst)] do
      if IsInt(lst[j]*n) then
        n := lst[j]*n;
        Add(seq, n);
        break;
      fi;
    od;
  od;
  return seq;
end;

# for primes
l := [17/91,78/85,19/51,23/38,29/33,77/29,95/23,77/19,1/17,11/13,13/11,15/2,1/7,55/1];;

# for fibonacci
#l := [17/65, 133/34, 17/19, 23/17, 2233/69, 23/29, 31/23, 74/341, 31/37, 41/31, 129/287, 41/43, 13/41, 1/13, 1/3];


