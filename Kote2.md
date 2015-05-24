BMI is the key to keep track of Health and live a better life
========================================================
author: Kote Chintalacharuvu
date: May 23, 2015

What is BMI ?
========================================================
BMI stands for Body Mass Index. 
It is a measure of body fat in adults. 

- Based on studies in millions of people, the National Heart, Lung and Blood Institute suggested a range of BMI to live healthy
- We have generated a BMI calculator using shiny package in R
- Please enter your weight in pounds and height in inches
- You will receive a BMI value
- Compare your BMI to a table indicating the possible ranges of BMI values
- Modify your diet and life style to keep your BMI in the normal range
- Live a happy and long life

Slide With Code
========================================================
Created two files in shiny R package; UI.R and server.R

```r
## UI.R file
library(shiny)
shinyUI(pageWithSidebar(
        headerPanel(
h3("Body mass index known as 'BMI' is a measure of body fat in adults based on weight and height. Enter weight and height in pounds & inches to obtain the BMI. 
   BMI calculator")), 
        sidebarPanel(
                numericInput ('weight', 'Please enter weight in pounds', 0, min = 1, max = 1000, step = 1),
                numericInput ('height', 'Please enter height in inches', 0, min = 1, max = 100, step = 1),
                submitButton('Submit')), 
        mainPanel(
                h4('Weight entered '),
                verbatimTextOutput("inputWtValue"),              
                h4('Height entered '),
                verbatimTextOutput("inputHtValue"),
                #verbatimTextOutput("inputValue"),
                h3('The predicted BMI is '),
                verbatimTextOutput("prediction"),
                h3('National Heart, Lung and Blood Institute suggests
                   the following BMI range classification'),
                h5('(Reviewed by Flegal et al in 2012 JAMA, vol 309, pages 71-82)'),
                h4('Less than 18.5           under weight'),
                h4('18.5 ---- 25.0          normal weight'),  
                h4('25.1 ---- 30.0            over weight'), 
                h4('30.1 ---- 35.0            Grade I obese'),
                h4('35.1 ---- 40.0            Grade II obese'),
                h4('40.1 -- & over          Grade III obese') # No comma
        )
))
## server.R file
library(shiny)

bodyMassIndex <- function(weight, height){weight*703/height^2}
shinyServer(
        function(input, output){
         output$inputWtValue <- renderPrint({input$weight})
         output$inputHtValue <- renderPrint({input$height})
         output$prediction <- renderPrint({bodyMassIndex(input$weight, input$height)})
        })
runApp()

## when runApp() command is used in the commant line, the program assembles the code into a nice BMI calculator with all the information required to use it
```

Please access the online BMI calculator.
========================================================


```r
<http://koteshinyapp.shinyapps.io/shiny/>
```

Summary
=========================================================


- Shiny application was effective in generating a useful calculator
- Visit the website "https://koteshinyapp.shinyapps.io/shiny/"
- The calulator is easy to use
- The BMI is a very useful parameter to monitor health
