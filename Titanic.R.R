
library(ggplot2)

# titanic is avaliable in your workspace
# 1 - Check the structure of titanic
str(titanic)

# 2 - Use ggplot() for the first instruction
ggplot(titanic, aes(x = pclass, fill = sex)) +
  geom_bar(position = "dodge")

# 3 - Plot 2, add facet_grid() layer
ggplot(titanic, aes(x = pclass, fill = sex)) +
  geom_bar(position = "dodge") +
  facet_grid(.~survived)

# 4 - Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# 5 - Plot 3, but use the position object from instruction 4
ggplot(titanic, aes(x = pclass, y = age, col = sex)) +
  geom_point(position = posn.jd, alpha = 0.5, size = 3) +
  facet_grid(.~survived)
