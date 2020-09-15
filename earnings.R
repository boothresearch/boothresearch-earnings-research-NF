earnings <- read.csv("https://raw.githubusercontent.com/avehtari/ROS-Examples/master/Earnings/data/earnings.csv")

sink("reg01.txt", append = FALSE)
fitted.model <- lm(earnings$earn ~ earnings$height + earnings$male)
print(Sys.time(), quote = FALSE)
print(summary(fitted.model))
closeAllConnections()
fitted.model


png("reg01.png")
plot(earnings$height, earnings$earn, xlab = "height", ylab="earnings")
abline(fitted.model)
dev.off()

sink("reg02.txt", append = FALSE)
fitted.model2 <- lm(earnings$earn ~ earnings$height + earnings$male + earnings$height * earnings$male)
print(Sys.time(), quote = FALSE)
print(summary(fitted.model2))
closeAllConnections()
fitted.model


png("reg02.png")
plot(earnings$height, earnings$earn, xlab = "height", ylab="earnings")
abline(fitted.model)
dev.off()