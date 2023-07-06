library("ggplot2")

data(mpg)

ggplot(data=mpg, aes(x = hwy, y = cty))  +geom_line() + geom_point()

ggplot() + geom_point(data = mpg, mapping = aes(x = hwy, y = cty))

p <- ggplot(data = mpg, mapping = aes(hwy, cty, color=drv))
p + geom_point() + geom_line()


(p1 <- ggplot(data = mpg, mapping = aes(x = hwy, y  =cty)) + geom_point(color='darkblue')  )


(p2 <- ggplot(data= mpg, mapping = aes(hwy,cty, color ='darkblue')) + geom_point() )
## ??ggplot2::geom_point

p3 <- ggplot(data = mpg, mapping = aes(hwy, cty, color = drv)) + geom_point()
df_plot <- ggplot_build(p3)$data[[1]]
head(df_plot)

table(df_plot$colour)


plotter <- ggplot(data = mpg, mapping = aes(hwy, cty, shape = drv, size = displ)) + geom_point()
plotter


mtcars$car <- rownames(mtcars)
ggplot(mtcars, aes(x =mpg, y = hp, label = car)) + geom_text(check_overlap = T, hjust = 0)

?geom_bar
ggplot(mtcars, aes(mpg,hp)) + stat_identity(geom="line") +  scale_x_continuous(-2, 0, 2)

ggplot(data.frame(x = c(-5,5)), aes(x)) + stat_function(fun = dnorm, geom = 'point')

logistic <- function(x) {1/(1+ exp(-x))}
ggplot(data.frame(x = c(-5,5)), aes(x)) + 
  stat_function(fun = logistic, geom = 'point', color = 'red')


ggplot(data.frame(x = c(-5,5)), aes(x)) + 
  stat_function(fun = logistic, color = 'red') + 
  stat_function(fun = dnorm, color = 'blue')

sinx <- function(x){(sin(x))}
cosx <- function(x){cos(x)}

ggplot(data.frame(x = c(-5,5)), aes(x)) + 
  stat_function(fun = sinx, color = 'red') + 
  stat_function(fun = cosx, color = 'blue' )+ 
  geom_vline(xintercept = 0) + 
  geom_hline(yintercept = 0) + 
  scale_y_continuous(limits = c(NA,40))

ggplot(data = mpg, mapping = aes(x= hwy, y = cty, color = drv)) +
  geom_point(alpha=0.6) + scale_color_manual(values = c('red', 'green', 'blue'))


ggplot(data = diamonds, aes(price, carat)) + geom_point() +
  coord_trans(x = 'log10', y = 'log10')

str(diamonds)

movies_small <- read.csv('movies_small.csv')

ggplot(movies_small, aes(x=imdbRating)) + geom_histogram() + facet_wrap(~genre_first, scales='free_y') 

ggplot(movies_small, aes(x = imdbRating, y = Metascore))+ geom_point()+ facet_grid(Rated~genre_first + has_oscar)

ggplot(mtcars, aes(x = mpg, y = hp)) + geom_point()+ 
  theme(axis.ticks = element_line(colour = 'red', size = 16),
        axis.text.x = element_text(colour = 'red', size = 16),
        panel.background = element_rect(fill = 'grey'))

ggplot(mtcars, aes(mpg, hp)) + geom_point() + theme_classic()


