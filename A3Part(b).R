set.seed(42)
N <- 10000
final_states <- integer(N)
for (i in 1:N) {
  state <- 1  # light = index 1 in R
  for (j in 1:9) state <- sample(1:3, 1, prob=P_A[state,])
  for (j in 1:6) state <- sample(1:3, 1, prob=P_B[state,])
  final_states[i] <- state
}
sim_probs <- table(final_states) / N
barplot(sim_probs, names.arg=c("Light","Heavy","Jammed"),
        main="Simulated Traffic at 6PM (N=10,000)",
        ylab="Proportion", col=c("green","orange","red"))
abline(h=pi_6pm, lty=2, col="blue")
