# Exercise 1: ggplot2 basics

library(dplyr)
library(ggplot2)
diamonds_sample <- sample_n(diamonds, 100)
p <- ggplot(diamonds_sample, aes(x=carat, y=price)) + geom_point()

p2 <- ggplot(diamonds_sample, aes(x=carat, y=price, color=clarity)) + geom_point() + scale_color_brewer(palette="Dark2")

p3 <- ggplot(diamonds, aes(x=carat, y=price, color=clarity)) + geom_point() + scale_color_brewer(palette="Dark2")

p4 <- ggplot(diamonds_sample, aes(x=carat, y=price)) + geom_point(color='blue')

p5 <- ggplot(diamonds_sample, aes(x=carat, y=price, group=cut)) + geom_point(aes(shape=cut))

p6 <- ggplot(diamonds_sample, aes(x=cut, y=carat, group=price)) + geom_point(aes(size=price))

p7 <- ggplot(diamonds_sample, aes(x=cut, y=carat, group=price)) + geom_point(aes(size=price, color=price))

p8 <- ggplot(diamonds_sample, aes(x=carat, y=price, group=cut)) + geom_line(aes(color=cut)) + geom_point()

p9 <- ggplot(diamonds_sample, aes(x=carat, y=price, group=cut)) + geom_line(aes(color=cut)) + geom_point() + stat_smooth(method="gam")

p10 <- ggplot(diamonds_sample, aes(x=cut, y=price)) + geom_col()

p11 <- ggplot(diamonds_sample, aes(x=cut, y=price, fill=clarity)) + geom_col()

p12 <- ggplot(diamonds_sample, aes(x=carat, y=price, group=cut), col=alpha(0.3)) + geom_line(aes(color=cut)) + geom_point() + stat_smooth(method="gam")