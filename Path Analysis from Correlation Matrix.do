set more off

clear

*1. Define Variables
ssd init var_y  var_x1  var_x2   var_x3 var_x4  var_x5

*2. Define sample size
ssd set obs 1000

ssd set means 0 0 0 0 0 0  // this value is default
ssd set sd 1 1 1 1 1 1    // this value is default

*3. Define Correlation Matrix
#delimit;           
  ssd set correlations  1.00 \                                     
                        .30    1.00     \                          
                        .30   .60   1.00 \                         
                        .25   .60    .60     1.00   \            
                        .25   .60    .60      .60   1.00   \      
                        .25   .60    .60      .60    .60   1.00; 
#delimit cr

ssd status
ssd describe
ssd list

*4. Define the Model
sem (var_y <- var_x1 var_x2 var_x3 var_x4), stand
