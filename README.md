# R-practice
The repo for now consists of COT (cleaning, organising and transforming files), bias function and Anseombe's quartet , visualization (ggplot2)

# Anseombe's quartet
Four datasets that have nearly identical summary statictics.

Based on the summaries we created with our statistical measures, these datasets could be identical, but sometimes just looking at the summarized data can be misleading. Visualization can help us understand if the data is identical or not

The datasauRus creates plots with the Anscombe data in different shapes. 


# Bias Function 
Bias function finds the average amount that the actual outcome is greater than the predicted outcome

For an unbiased model, the bias function value should be close to 0, else it's not accurate

# ggplot2
The ggplot2 package lets you make high quality, customizable plots of your data. As a refresher, ggplot2 is based on the grammar of graphics, which is a system for describing and building data visualizations. The essential idea behind the grammar of graphics is that you can build any plot from the same basic components, like building blocks. 

# syntax for creation a plot using ggplot2

            ggplot(data=<DATA>) +

            <GEOM_FUNCTION>(mapping=aes(<AESTHETHIC_MAPPINGS>))
