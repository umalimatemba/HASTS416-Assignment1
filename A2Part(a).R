library(markovchain)
states2 <- as.character(0:6)
P2 <- matrix(c(0,1,0,0,0,0,0, 1,0,0,0,0,0,0, 0,0,0,0.4,0.2,0.2,0.2,
  0,0,0,0,0.2,0.4,0.4, 0.3,0,0,0.1,0.3,0.1,0.2,
  0,0,0,0.2,0.2,0.3,0.3, 0,0,0,0.5,0.2,0.2,0.1), nrow=7, byrow=TRUE)
mc2 <- new("markovchain", states=states2, byrow=TRUE, transitionMatrix=P2)
plot(mc2, main="7-State Markov Chain")
