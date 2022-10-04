library(shiny)

# Define UI ----
ui <- fluidPage(
    titlePanel("Mi Shiny App"),
    sidebarLayout(
        sidebarPanel(
            h2("Instalación"),
            p("Shiny esta disponible en CRAN y se puede instalar de la forma tradicional en la consora de R:"),
            code('install.packages("shiny")'),
            br(),
            br(),
            br(),
            br(),
            img(src = "https://shiny.rstudio.com/tutorial/written-tutorial/lesson2/www/rstudio.png", height = 70, width = 200),
            br(),
            "Shiny es un producto de  ", 
            span("RStudio", style = "color:blue")
        ),
        mainPanel(
            h1("Introduciendo a Shiny"),
            p("Shiny es un paquete de RStudio que hace ", 
              em("increiblemente fácil "), 
              "construir aplicaciones interactivas utilizando R."),
            br(),
            p("Para una introducción y ejemplos interactivos, visite el ",
              a("sitio web de Shiny.", 
                href = "http://shiny.rstudio.com")),
            br(),
            h2("Características"),
            p("- Construye aplicaciones web útiles con solo unas pocas líneas de código. No necesita JavaScript."),
            p("- Las aplicaciones son automáticamente 'interactivas' en la mista forma que lo son las ", 
              strong("hojas de cálculo"),
              ". Las salidas cambian en forma instantanea en la medida que el usuario modifica las entradas, 
              sin ser necesario refrescar el navegador.")
        )
    )
)

# Define server logic ----
server <- function(input, output) {
    
}

# Run the app ----
shinyApp(ui = ui, server = server)