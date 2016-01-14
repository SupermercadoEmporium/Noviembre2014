library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Emporium 2014"),
  
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Primera Categoria (Antecedente)", style ="color:#297418;"), 
                       choices =  vec_aux1[3:41]), tableOutput("Noviembre")),
    column(3,
           selectInput("select2", label = h3("Segunda Categoria (Consecuente)", style = "color:#dd21d5;"), 
                       choices =vec_aux1[3:41]), tableOutput("Noviembre2"))
    ),
    
    
  
  titlePanel("Noviembre"),
  sidebarLayout(
    sidebarPanel( "Resumen Noviembre",
                  style = "color:#2183dd;",
                  tableOutput("confidenceNoviembre"),
                  tableOutput("liftNoviembre")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1Noviembre"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1Noviembre"),
                  textOutput("tablanamecat2Noviembre"),
                  textOutput("tablaprobcat2Noviembre"),
                  textOutput("tablanamecat3Noviembre"),
                  textOutput("tablaprobcat3Noviembre"),
                  textOutput("tablanamecat4Noviembre"),
                  textOutput("tablaprobcat4Noviembre"),
                  textOutput("tablanamecat5Noviembre"),
                  textOutput("tablaprobcat5Noviembre")),
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1Noviembre"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1Noviembre"),
                  textOutput("tabla1namecat2Noviembre"),
                  textOutput("tabla1probcat2Noviembre"),
                  textOutput("tabla1namecat3Noviembre"),
                  textOutput("tabla1probcat3Noviembre"),
                  textOutput("tabla1namecat4Noviembre"),
                  textOutput("tabla1probcat4Noviembre"),
                  textOutput("tabla1namecat5Noviembre"),
                  textOutput("tabla1probcat5Noviembre"))
  )
  
  
  
))
