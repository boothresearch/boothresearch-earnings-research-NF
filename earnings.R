earnings <- read.csv("https://raw.githubusercontent.com/avehtari/ROS-Examples/master/Earnings/data/earnings.csv")

sink("reg01.txt", append = FALSE)
fitted.model <- lm(earnings$earn ~ earnings$height)
print(Sys.time(), quote = FALSE)
print(summary(fitted.model))
closeAllConnections()

png("reg01.png")
plot(earnings$height, earnings$earn)
abline(fitted.model)
dev.off()