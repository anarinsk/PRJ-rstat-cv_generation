data<- data.frame(
  row.names = c("A", "B", "C"),
  Thickness = c(7.9, 3.9, 9.4),
  Apperance = c(10, 7, 5),
  Spredability = c(3.7, 6, 2.5),
  Likeability = c(8.7, 6, 4), 
  Actionabilty = c(6.7, 9, 7)
)
data

library(tidyverse) 
devtools::install_github("ricardo-bion/ggradar") 
library("ggradar") 
df<-data %>% rownames_to_column("group")
df

ggradar(
  df, 
  values.radar = c("0", "5", "10"),
  grid.min = 0, grid.mid = 5, grid.max = 10,
  # Polygons
  group.line.width = 1, 
  group.point.size = 3,
  group.colours = c("#00AFBB", "#E7B800", "#FC4E07"),
  background.circle.colour = "white",
  gridline.mid.colour = "grey",
  legend.position = "bottom"
)


mtcars
has_rownames(mtcars)

mtcars_tbl <- rownames_to_column(mtcars, var = "car") %>% as_tibble()
mtcars_tbl
