##Correlation

edit(state.x77)
states<-state.x77[,1:6]
cor(states,method = "pearson")


cor.test(states[,2], states[,4])
