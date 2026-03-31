set.seed(123)
sim1 <- rmarkovchain(n=30, object=mc1, t0=sample(states,1))
sim2 <- rmarkovchain(n=30, object=mc1, t0=sample(states,1))
sim3 <- rmarkovchain(n=30, object=mc1, t0=sample(states,1))
plot(as.numeric(sim1), type="b", col="blue", ylim=c(0,4),
     xlab="Step", ylab="State", main="Three Trajectories")
lines(as.numeric(sim2), type="b", col="red")
lines(as.numeric(sim3), type="b", col="green")
