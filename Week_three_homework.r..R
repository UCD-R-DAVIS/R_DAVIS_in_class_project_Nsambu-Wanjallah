surveys<-read.csv("data/portal_data_joined.csv")

colnames(surveys)

surveys_base<-surveys[1:5000, (6,9,13)]

surveys_base<-surveys[1:5000, c(6,9,13)]

surveys_base<-surveys_base[complete.cases(surveys_base)]

surveys_base$species_id<-factor(surveys_base$species_id)

surveys_base$plot_type<-factor(surveys_base$plot_type)


levels(surveys_base$species_id)
typeof(surveys_base$plot_type)
dim(surveys_base$species_id)
length(surveys_base$species_id)
class(surveys_base$species_id)


levels(surveys_base$plot_type)
class(surveys_base$plot_type)

challenge_base<-surveys_base[surveys_base >150,]

challenge_base<-surveys_base[surveys_base[2,]>150]

challenge_base<-surveys_base[surveys_base[,2]>150,]
