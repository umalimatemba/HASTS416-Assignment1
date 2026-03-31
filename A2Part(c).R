set.seed(42)
traj1 <- rmarkovchain(n=50, object=mc2, t0=sample(states2,1))
traj2 <- rmarkovchain(n=50, object=mc2, t0=sample(states2,1))
par(mfrow=c(2,1))
plot(as.numeric(traj1), type="b", col="blue", ylim=c(0,6),
     xlab="Step", ylab="State", main="Trajectory 1")
plot(as.numeric(traj2), type="b", col="red", ylim=c(0,6),
     xlab="Step", ylab="State", main="Trajectory 2")
