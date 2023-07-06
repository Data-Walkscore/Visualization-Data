library(ggthemes)

p1 <- ggplot(mtcars, aes(mpg, hp)) + geom_point()
p1 + theme_economist()

## theme_my <-"we define"

## theme_my <- function(base_size = 12)
ggplot(mtcars, aes(x = mpg, y = hp)) + geom_point(aes(color=hp, size = mpg, alpha = 0.7))+ geom_line(aes(size = hp/20))  + 
  theme(axis.ticks = element_line(colour = 'red', size = 16),
        axis.text.y = element_text(colour = 'yellow', size = mtcars$hp),
        axis.text.x = element_text(colour = 'red', size = mtcars$hp),
        panel.background = element_rect(fill = 'cyan'),)



