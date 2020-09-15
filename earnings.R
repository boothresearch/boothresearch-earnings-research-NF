earnings <- read.csv("https://raw.githubusercontent.com/avehtari/ROS-Examples/master/Earnings/data/earnings.csv")

sink("reg01.txt", append = False)
fitted.model <- lm(earnings$earn ~ earnings$height)
print(Sys.time(), quote = False)
print(summary(fitted.model))
closeAllConnections()