conway := function(n)
  local k, m, lst, new, j;

  k := 1;
  m := 0;

  lst := ListOfDigits(n);
  new := [];

  for j in [1..Length(lst)] do
    if lst[j] = lst[k] then
      m := m+1;
    else
      Add(new, m);
      Add(new, lst[k]);
      k := j;
      m := 1;
    fi;
  od;
  Add(new, m);
  Add(new, lst[k]);
  return new*Reversed(List([0..Length(new)-1], x->10^x));
end;
