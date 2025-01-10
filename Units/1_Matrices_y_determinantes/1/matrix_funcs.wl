InvolutoryMatrixQ[m_] := SquareMatrixQ[m] && m.m == IdentityMatrix[Length[m]]

IdempotentMatrixQ[m_] := SquareMatrixQ[m] && m.m == m

(*It is called pseudo since only uses brute force*)
PseudoNilpotentIndex[m_] := Module[{k = 1, mk = m},
    While[mk != ConstantArray[0, Dimensions[m]] && k <= Length[m],
        mk = mk.m;
        k++;
    ];
    If[mk == ConstantArray[0, Dimensions[m]], k, Infinity]
]

PseudoNilpotentMatrixQ[m_] := SquareMatrixQ[m] && PseudoNilpotentIndex[m] < Infinity

