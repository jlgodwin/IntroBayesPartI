rm(list = ls())
# Setup ####
setwd("~/Dropbox/Workshops/IntroBayesPartI/")

## Libraries ####
library(scales)
# install.packages('bayesrules')
# devtools::install_github("stan-dev/bayesplot")
library(bayesrules)

# Probability ####
## Die: Sample Space ####
pdf("Die_SampleSpace.pdf")
plot(NA, NA,
     xlim = c(0,2), ylim = c(0,1),
     xaxt = 'n', yaxt = 'n', 
     type = 'n', axes = FALSE,
     xlab = "", ylab = "")

polygon(x = c(0, 2, 2, 0),
        y = c(0, 0, 1, 1),
        col = alpha("black", 0.25),
        border = "black", lwd = 2)
segments(x0 = c(.67, 1.33),
         x1 = c(.67, 1.33),
         y0 = c(0,0),
         y1 = c(1,1), col = "black", lwd = 2)
segments(x0 = 0, x1 = 2,
         y0 = 0.5, y1 = 0.5,
         col = "black", lwd = 2)
text(x = rep(.33*c(1, 3, 5), 2),
     y = rep(c(.75, .25), each = 3),
     labels = c(1, 3, 5, 2, 4, 6), cex = 2, col = "black")
text(x = .15, y = .15,
     labels = "S", cex = 2, col = "black")
dev.off()

## Die: Mutually Exclusive ####
pdf("Die_MutuallyExcl_AB.pdf")
plot(NA, NA,
     xlim = c(0,2), ylim = c(0,1),
     xaxt = 'n', yaxt = 'n', 
     type = 'n', axes = FALSE,
     xlab = "", ylab = "")

polygon(x = c(0, 1.33, 1.33, 0),
        y = c(0, 0, 1, 1),
        col = alpha("navy", 0.25),
        border = "navy", lwd = 2)
polygon(x = c(1.33, 2, 2, 1.33),
        y = c(0, 0, 1, 1),
        col = alpha("firebrick", 0.25),
        border = "firebrick", lwd = 2)
segments(x0 = c(.67, 1.33),
         x1 = c(.67, 1.33),
         y0 = c(0,0),
         y1 = c(1,1), col = "navy", lwd = 2)
segments(x0 = 0, x1 = 2,
         y0 = 0.5, y1 = 0.5,
         col = "navy", lwd = 2)
text(x = rep(.33*c(1, 3), 2),
     y = rep(c(.75, .25), each = 2),
     labels = c(1, 3, 2, 4), cex = 2, col = "navy")
text(x = rep(.33*c(5), 2),
     y = rep(c(.75, .25), each = 1),
     labels = c(5, 6), cex = 2, col = "navy")
text(x = .15, y = .15,
     labels = "S", cex = 2, col = "navy")
dev.off()

## Probability: Union ####
pdf("Die_Union.pdf")
plot(NA, NA,
     xlim = c(0,2), ylim = c(0,1),
     xaxt = 'n', yaxt = 'n', 
     type = 'n', axes = FALSE,
     xlab = "", ylab = "")

polygon(x = c(0, 1.33, 1.33, 0),
        y = c(0, 0, 1, 1),
        col = alpha("navy", 0.25),
        border = "navy", lwd = 2)
polygon(x = c(0, 2, 2, 0),
        y = c(0.5, 0.5, 1, 1),
        col = alpha("firebrick", 0.25),
        border = "firebrick", lwd = 2)
segments(x0 = c(.67, 1.33),
         x1 = c(.67, 1.33),
         y0 = c(0,0),
         y1 = c(1,1), col = "navy", lwd = 2)
segments(x0 = 0, x1 = 2,
         y0 = 0.5, y1 = 0.5,
         col = "navy", lwd = 2)
text(x = rep(.33*c(1, 3), 2),
     y = rep(c(.75, .25), each = 2),
     labels = c(1, 3, 2, 4), cex = 2, col = "navy")
text(x = rep(.33*c(5), 2),
     y = rep(c(.75, .25), each = 1),
     labels = c(5, 6), cex = 2, col = "navy")
text(x = .15, y = .15,
     labels = "S", cex = 2, col = "navy")
dev.off()


## Die: Conditional
pdf("Die_Conditional.pdf")
plot(NA, NA,
     xlim = c(0,2), ylim = c(0,1),
     xaxt = 'n', yaxt = 'n', 
     type = 'n', axes = FALSE,
     xlab = "", ylab = "")

polygon(x = c(0, 2, 2, 0),
        y = c(0.5, 0.5, 1, 1),
        col = alpha("navy", 0.25),
        border = "navy", lwd = 2)
polygon(x = c(0, .67, .67,  0),
        y = c(0, 0, 1, 1),
        col = alpha("firebrick", 0.25),
        border = "firebrick", lwd = 2)
segments(x0 = c(.67, 1.33),
         x1 = c(.67, 1.33),
         y0 = c(0,0),
         y1 = c(1,1), col = "navy", lwd = 2)
segments(x0 = 0, x1 = 2,
         y0 = 0.5, y1 = 0.5,
         col = "navy", lwd = 2)
text(x = rep(.33*c(1, 3), 2),
     y = rep(c(.75, .25), each = 2),
     labels = c(1, 3, 2, 4), cex = 2, col = "navy")
text(x = rep(.33*c(5), 2),
     y = rep(c(.75, .25), each = 1),
     labels = c(5, 6), cex = 2, col = "navy")
text(x = .15, y = .15,
     labels = "S", cex = 2, col = "navy")
dev.off()

## Die: Independence ####
pdf("Die_Independence.pdf")
plot(NA, NA,
     xlim = c(0,2), ylim = c(0,1),
     xaxt = 'n', yaxt = 'n', 
     type = 'n', axes = FALSE,
     xlab = "", ylab = "")

polygon(x = c(0, 1.33, 1.33, 0),
        y = c(0, 0, 1, 1),
        col = alpha("navy", 0.25),
        border = "navy", lwd = 2)
polygon(x = c(0, 2, 2,  0),
        y = c(0.5, 0.5, 1, 1),
        col = alpha("firebrick", 0.25),
        border = "firebrick", lwd = 2)
segments(x0 = c(.67, 1.33),
         x1 = c(.67, 1.33),
         y0 = c(0,0),
         y1 = c(1,1), col = "navy", lwd = 2)
segments(x0 = 0, x1 = 2,
         y0 = 0.5, y1 = 0.5,
         col = "navy", lwd = 2)
text(x = rep(.33*c(1, 3), 2),
     y = rep(c(.75, .25), each = 2),
     labels = c(1, 3, 2, 4), cex = 2, col = "navy")
text(x = rep(.33*c(5), 2),
     y = rep(c(.75, .25), each = 1),
     labels = c(5, 6), cex = 2, col = "navy")
text(x = .15, y = .15,
     labels = "S", cex = 2, col = "navy")
dev.off()

# Conjugacy ####

## Beta Binomial ####

pdf("BetaBinomial_22.pdf")
plot_beta_binomial(
  alpha = 2,
  beta = 2,
  y = 5,
  n = 100,
  prior = TRUE,
  likelihood = TRUE,
  posterior = TRUE
)
dev.off()

pdf("BetaBinomial_51_n10.pdf")
plot_beta_binomial(
  alpha = 5,
  beta = 1,
  y = 1,
  n = 10,
  prior = TRUE,
  likelihood = TRUE,
  posterior = TRUE
)
dev.off()
pdf("BetaBinomial_51_n100.pdf")
plot_beta_binomial(
  alpha = 5,
  beta = 1,
  y = 5,
  n = 100,
  prior = TRUE,
  likelihood = TRUE,
  posterior = TRUE
)
dev.off()

## Normal Normal ####
data <- sample(c(17:20), size = 100,
               replace = TRUE, prob = c(.15, .35, .35, .15)) 
mean(data)
sd(data)

pdf("NormalNormal_18_1_n100.pdf")
plot_normal_normal(
  mean = 18,
  sd = 1,
  y_bar =  18.5,
  sigma = .87,
  n = 100,
  prior = TRUE,
  likelihood = TRUE,
  posterior = TRUE
)
dev.off()

pdf("NormalNormal_18_1_n10.pdf")
plot_normal_normal(
  mean = 18,
  sd = 1,
  y_bar =  18.5,
  sigma = .87,
  n = 10,
  prior = TRUE,
  likelihood = TRUE,
  posterior = TRUE
)
dev.off()

pdf("NormalNormal_20_1_n10.pdf")
plot_normal_normal(
  mean = 20,
  sd = 1,
  y_bar =  18.5,
  sigma = .87,
  n = 10,
  prior = TRUE,
  likelihood = TRUE,
  posterior = TRUE
)
dev.off()


pdf("NormalNormal_20_1_n100.pdf")
plot_normal_normal(
  mean = 20,
  sd = 1,
  y_bar =  18.5,
  sigma = .87,
  n = 100,
  prior = TRUE,
  likelihood = TRUE,
  posterior = TRUE
)
dev.off()
