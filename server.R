#Segundo Semestre
#install.packages("shiny")
library(shiny)

shinyServer(function(input, output) {
  
  
output$Noviembre<-renderPrint({
  y<-input$select
  paste(y,round(a_matrix_Noviembre[y,y], digits=4))
  
})

output$Noviembre2<-renderPrint({
  y<-input$select2
  paste(y,round(a_matrix_Noviembre[y,y], digits=4))
  
})

output$confidenceNoviembre<-renderPrint({
  x<-input$select
  y<-input$select2
  paste("Confidence",round(a_matrix_Noviembre[x,y]/a_matrix_Noviembre[x,x], digits=4))
})

output$liftNoviembre<-renderPrint({
  x<-input$select
  y<-input$select2
  paste("Lift",round(round(a_matrix_Noviembre[x,y]/a_matrix_Noviembre[x,x], digits=4)/round(a_matrix_Noviembre[y,y], digits=4), digits=4))
})

output$tablanamecat1Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[1]))
})

output$tablaprobcat1Noviembre<-renderText({
  
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste(round(t[1], digits=4))
})

output$tablanamecat2Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[2]))
})

output$tablaprobcat2Noviembre<-renderText({
  
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste( round(t[2], digits=4))
})

output$tablanamecat3Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[3]))
})

output$tablaprobcat3Noviembre<-renderText({
  
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  paste( round(t[3], digits=4))
})

output$tablanamecat4Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:4){
    nam[i]<-names(t[i])
  }
  paste( names(t[4]))
})

output$tablaprobcat4Noviembre<-renderText({
  
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  paste( round(t[4], digits=4))
})

output$tablanamecat5Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[5]))
})

output$tablaprobcat5Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste(round(t[5], digits=4))
})

output$tabla1namecat1Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select2,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[1]))
})

output$tabla1probcat1Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select2,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  
  paste( round(t[1], digits=4))
})

output$tabla1namecat2Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select2,
                               select=c(Noviembre.CATEGORIA1)))
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[2]))
})

output$tabla1probcat2Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select2,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  
  paste( round(t[2], digits=4))
})

output$tabla1namecat3Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select2,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[3]))
})

output$tabla1probcat3Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select2,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  
  paste(round(t[3], digits=4))
})

output$tabla1namecat4Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select2,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:4){
    nam[i]<-names(t[i])
  }
  paste( names(t[4]))
})

output$tabla1probcat4Noviembre<-renderText({
  
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select2,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  paste( round(t[4], digits=4))
})

output$tabla1namecat5Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select2,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[5]))
})

output$tabla1probcat5Noviembre<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                               Noviembre.Categoriaf3==input$select2,
                               select=c(Noviembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste(round(t[5], digits=4))
})

})


#Noviembre
catg_Noviembre<-data.frame( Noviembre$CATEGORIA1, 
                            Noviembre$Categoriaf3,
                            Noviembre$SLSEQ, 
                            Noviembre$TICKET)

catg_sin_rep_Noviembre<-unique(catg_Noviembre)
