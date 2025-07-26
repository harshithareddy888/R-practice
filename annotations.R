#Annotations are a useful way to add notes to your plot. They help you explain the plot’s purpose, highlight important data points, or comment on any data trends or findings the plot illustrates.

library('ggplot2')
library('palmerpenguins')

#Titles, subtitles, captions
#Titles, subtitles, and captions are labels that we put outside of the grid of our plot to indicate important information.
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g,color=species))+
  labs(title = "Palmer penguins: body mass vs flipper length", subtitle = 'Sample of three penguin species', caption ='yellooooo')+
  annotate('text', x=220, y=3500, label='The Gentoos are the largest', color='purple',fontface='bold', size=4.5, angle=25)

#If we want to put text inside the grid to call out specific data points, we can use the annotate function. We can customize our annotation even more.
#we can change the color of our text,  We can also change the font style and size of our text. Use font face and size to write the code.We can even change the angle of our text.

#Our code is long,  If you want to use less code, you can store your plot as a variable in R.

p <- ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g,color=species))+
  labs(title = "Palmer penguins: body mass vs flipper length", subtitle = 'Sample of three penguin species', caption ='yellooooo')

#instead of writing code again, we can call p
p+annotate('text', x=220, y=3500, label='The Gentoos are the largest')

#Labels and annotations can be really helpful when it comes to highlighting important parts of your data and communicating key points.