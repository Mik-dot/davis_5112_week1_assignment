#Histogram plot of the distribution of the number of listed household members for the entire sample.
ggplot(hh, mapping = aes(hv009))+
  geom_histogram(binwidth = 1)

#Boxplot graph of the distribution of household size by type of urban area.
type_of_urban <- factor(hv026)
ggplot(urban, mapping = aes (x = hv009, y = type_of_urban))+
  geom_boxplot()