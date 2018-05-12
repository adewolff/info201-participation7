library(shiny)

shinyUI(navbarPage("Diamonds",
                   tabPanel("Graph",
                            titlePanel("Diamond quality"),
                            sidebarLayout(
                              sidebarPanel(
                                # Select x variable
                                selectInput(
                                  "x_var",
                                  label = "Variable to graph on x axis",
                                  choices = list(
                                    "Carat" = "carat",
                                    "Cut" = "cut",
                                    "Colour" = "color",
                                    "Clarity" = "clarity",
                                    "Depth" = "depth",
                                    "Price" = "price"
                                  ) # End of list
                                ), # End of select input

                                # Select y variable
                                selectInput(
                                  "y_var",
                                  label = "Variable to graph on y axis",
                                  choices = list(
                                    "Price" = "price",
                                    "Carat" = "carat",
                                    "Cut" = "cut",
                                    "Colour" = "color",
                                    "Clarity" = "clarity",
                                    "Depth" = "depth"
                                  ) # End of list
                                ), # End of select input

                                # Select dot colour
                                selectInput(
                                  "colour",
                                  label = "Variable to graph on y axis",
                                  choices = list(
                                    "Blue" = "blue",
                                    "Red" = "red",
                                    "Green" = "green",
                                    "Black" = "black"
                                  ) # End of list
                                ) # End of select input
                              ), # End of sidebar panel

                              # Main panel: display plotly map
                              mainPanel(
                                plotOutput("plot")
                              ) # End of main panel
                            ) # End of sidebar layout
                   ) # End of tab panel
)) # End of navbar page, ShinyUI
