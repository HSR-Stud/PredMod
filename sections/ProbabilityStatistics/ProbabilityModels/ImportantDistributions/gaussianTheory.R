# X~N(u, sigma^2) --> X~N(100,15^2)
# In R we compute P(X>130) as 1 - P(X<=130)
1-pnorm(130, mean=100, sd=15)
[1] 0.02275013

#P(85<=X<=115)
pnorm(115, mean=100, sd=15)-pnorm(85, mean=100, sd=15)
[1] 0.6826895

# TODO: ADD MORE HERE