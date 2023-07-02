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

