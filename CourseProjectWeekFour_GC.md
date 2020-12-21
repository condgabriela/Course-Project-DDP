Course Project Developing Data Products
========================================================
author: Gabriela Conde
date: 12/20/2020
autosize: true

Introduction
========================================================

This presentation is the Developing Data Products Course Project.

The Shiny app pitched at this presentation can be found at:

<https://gabriela-conde.shinyapps.io/myshinyapp/>.

Whereas its code is  available at:

<https://github.com/condgabriela/Course-Project-DDP.git>.



Description
========================================================

The main goal of the Shiny app is to run an interactive regression model on the state.77 dataset.
Additional tasks were performed:


- Dataset table
- Summary information
- Correlation matrix
- Interactive residual plot
- Best model fit


Correlation matrix
========================================================




```r
round(cor(state_info),2)
```

```
           Population Income Illiteracy Life Exp Murder HS Grad Frost  Area
Population       1.00   0.21       0.11    -0.07   0.34   -0.10 -0.33  0.02
Income           0.21   1.00      -0.44     0.34  -0.23    0.62  0.23  0.36
Illiteracy       0.11  -0.44       1.00    -0.59   0.70   -0.66 -0.67  0.08
Life Exp        -0.07   0.34      -0.59     1.00  -0.78    0.58  0.26 -0.11
Murder           0.34  -0.23       0.70    -0.78   1.00   -0.49 -0.54  0.23
HS Grad         -0.10   0.62      -0.66     0.58  -0.49    1.00  0.37  0.33
Frost           -0.33   0.23      -0.67     0.26  -0.54    0.37  1.00  0.06
Area             0.02   0.36       0.08    -0.11   0.23    0.33  0.06  1.00
```


Many thanks!!!!!
========================================================


