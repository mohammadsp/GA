crossover <-function(P1, P2){
  n = length(P1)
  site = floor(runif(1,min = 1, max = n-1))
  P3 = c(P1[1:site], P2[site:n])
  P4 = c(P1[site:n], P2[1:site])
  return(list(P3 = P3, P4=P4))
}

P1 = sample(c(0,1),11,replace = TRUE)
P2 = sample(c(0,1),11,replace = TRUE)
result = crossover(P1,P2)
