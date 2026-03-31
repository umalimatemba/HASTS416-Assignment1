library(markovchain)
states <- c("0","1","2","3","4")
P1 <- matrix(c(1,0,0,0,0, 0.5,0,0,0,0.5, 0.2,0,0,0,0.8, 0,0,1,0,0, 0,0,0,1,0),
             nrow=5, byrow=TRUE)
mc1 <- new("markovchain", states=states, byrow=TRUE, transitionMatrix=P1)
plot(mc1, main="5-State Markov Chain")
summary(mc1)
