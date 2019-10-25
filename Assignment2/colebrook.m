function value = colebrook(ratio_eD,Re)
fun = @(f) (1/sqrt(f) + 2*log10(ratio_eD/3.7 + 2.51/(Re*sqrt(f))));
value = fzero(fun , 0.05);
end