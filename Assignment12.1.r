
#PART A
yeast_data = read.csv(file = 'yeast.csv',sep = '',col.names = c('name','gvh','mcg','alm','mit','erl','pox','vac','nuc','class'))
View(yeast_data)
str(yeast_data)

#Ho: the discriminant analysis scores of nuclear localization signals of both nuclear and non-nuclear proteins does not vary with class type
#H1: the discriminant analysis scores of nuclear localization signals of both nuclear and non-nuclear proteins vary with class type
levels(yeast_data$class)

mean(x = yeast_data$nuc)

res.aov <- aov(nuc ~ class, data = yeast_data)
# Summary of the analysis
summary(res.aov)
 #conclusion
# P-value is much smaller than the signifance level ,  hence we reject Ho and conclude that the discriminant analysis scores of nuclear 
#localization signals of both nuclear and non-nuclear proteins vary by class type



#PART B

#histogram distribution for nuc wrt class
ggplot(yeast_data, aes(x = yeast_data$class, y = yeast_data$nuc)) +
  geom_boxplot(fill = "grey80", colour = "blue") +
  scale_x_discrete() + xlab("class types") +
  ylab("nuc distribution")
#the class nuc is significantly different from others. for all others classes Q1 = Q2 and does not vary. For nuc class, Q2 is higher and above the rest










