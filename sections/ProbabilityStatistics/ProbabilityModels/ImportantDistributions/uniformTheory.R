# value of the probability density function Uniform([1, 10]) at the position x = 5
dunif(x=5, min=1, max=10)
[1] 0.1111111

# P(X <= 5)
punif(q=5, min=1, max=10)
[1] 0.4444444

# P(1.2 < X <= 4.8)
punif(4.8, 1, 10) - punif(1.2, 1, 10)
[1] 0.4

# 5 uniformly distributed random values in Uniform([1, 10])
runif(5,min=1,max=10)
[1] 1.061933 6.484813 5.928334 8.459887 8.852405

# TODO: ADD MORE HERE