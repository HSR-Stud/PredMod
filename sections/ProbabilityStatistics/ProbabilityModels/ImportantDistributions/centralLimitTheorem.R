What is the probability that among 10000 tosses of a fair coin, heads would appear in maximum 5100 cases?
#Approximated: X~N(5000,2500)
pnorm(5100,5000,sqrt(2500))
[1] 0.9772499

#"True Result": X~Bin(10000,0.5)
pbinom(5100,10000,0.5)
[1] 0.9777871