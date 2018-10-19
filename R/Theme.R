theme_Adoc<- function(){
  theme_classic(base_size = 16) %+replace% 
    theme(plot.title = element_text(hjust = 1.0, color="white", size= 22),
          plot.background = element_rect(fill="black"), 
          panel.background = element_rect(fill = "black"),
          legend.background = element_rect(fill="black"),
          legend.text = element_text(colour="white"),
          legend.title = element_text(colour="white"),
          legend.key = element_rect(fill="black"), 
          axis.title = element_text(size = 18, colour = "white"),
          axis.line = element_line(colour = "white"),
          axis.ticks = element_line(colour = "white"),
          axis.text = element_text(colour="white", size=10)
    )
}

theme_Apres <- function(){
  theme_classic(base_size = 28) %+replace% 
    theme(plot.title = element_text(hjust = 0.5), 
          plot.background = element_rect(fill="transparent", colour=NA), 
          legend.background = element_rect(fill="transparent", colour=NA),
          legend.key = element_rect(fill="transparent", colour=NA),
          legend.text = element_text(size=18),
          legend.title = element_text(size=20),
          axis.title = element_text(size = 24),
          axis.text = element_text(colour="black", size=20)
    )
}
