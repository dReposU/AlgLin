(*For linear expressions only*)
getY[func_] := y /. Solve[{func}, {y}][[1]]

getZ[func_] := z /. Solve[{func}, {z}][[1]]