library(shiny)
shinyUI(pageWithSidebar(
        # Application title
        headerPanel(
h3("Body mass index known as 'BMI' is a measure of 
body fat in adults based on weight and height. Enter weight and height
in pounds & inches to obtain the BMI.
                    BMI calculator")
                    
                    ), 
        sidebarPanel(
                numericInput ('weight', 'Please enter weight in pounds', 0, min = 1, max = 1000, step = 1),
                numericInput ('height', 'Please enter height in inches', 0, min = 1, max = 100, step = 1),
                submitButton('Submit') 
                
        ), 
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