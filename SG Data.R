
# Creating preliminary graphs for the San Gerardo data
#Creating a graph that shows gaps in the dataset
SG = read.csv("Hetero-specific_Pollen_Count - Sheet1.csv")
SG

# Create a new table that shows the number of occurrences of each character for each species
SG$Species_Number_of_Sample
SG$HSP_Presence.
Table1 <- table(SG$Species_Number_of_Sample,SG$HSP_Presence.)
Table1

#Count the number of each letter in HSP_Presence:
sum(SG$HSP_Presence.=="p")
# y=10, p=4, x=32, n=28
a <- c("Yes","Poor Sample","No Anther Sample","No")
b <- c(10,4,32,28)
Table2 <- data.frame(HSP_Presence=a, Count=b)
Table2

ggplot(data=Table2, aes(x=HSP_Presence, y=Count)) +
  geom_bar(stat="identity", color = "black", fill="darkgreen")

#Creating a graph of the number of individuals collected for each species
data2 <- read.csv("SPECIESLIST_SANGERARDO.csv")
data2
colnames(data2)
# Focus on ID_Number and X.Individuals_Collected/X.Stigmas_Collected
ggplot(data=data2, aes(x=ID_Number, y=X.Individuals_Collected)) +
  geom_bar(stat = "identity")


