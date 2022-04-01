library(ggplot2)

######################
# Conference Types
######################
CSV_Text = "type,count
on-site,16
virtual,5
hybrid,4
other,2"
data = read.csv(text=CSV_Text, header=TRUE)

p<-ggplot(data=data, aes(x=reorder(type, count), y=count)) +
  geom_bar(stat="identity", fill="steelblue", width = 0.5) +
  xlab("Conference Type") + ylab("# Publications") +
  geom_text(stat='identity', aes(label=count), hjust=+2, size=3, colour="white") +
  theme_minimal()
p + coord_flip()




######################
# Country
######################
CSV_Text = "origin,count
USA,5
Canada,3
Switzerland,1
Italy,2
France,1
Belgium,1
Germany,3
NL,1
UK,1
Ireland,1
"
data = read.csv(text=CSV_Text, header=TRUE)

p<-ggplot(data=data, aes(x=reorder(origin, count), y=count)) +
  geom_bar(stat="identity", fill="steelblue", width = 0.7) +
  xlab("") + ylab("# Publications") +
  geom_text(stat='identity', aes(label=count), hjust=+2, size=2.5, colour="white") +
  theme_minimal()
p + coord_flip()



######################
# Test
######################
CSV_Text = "value,dim,type
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
1,social,SLR
-1,social,SLR
-1,social,SLR
-1,social,SLR
1,social,survey
1,social,survey
1,social,survey
1,social,survey
-1,social,survey
1,social,survey
1,social,survey
1,social,survey
-1,social,survey"
data = read.csv(text=CSV_Text, header=TRUE)

p <- ggplot(data, aes(x=type, y=value)) + 
  geom_violin()
p



######################
# Domain
######################
CSV_Text = "domain,count
medical science,6
political science,2
environmental sciences,1
computer science,2
transport science,2
educational science,1
life science,1
agricultural science,1
tourism economy,1
meteorologie,1
economics,1
"
data = read.csv(text=CSV_Text, header=TRUE)

p<-ggplot(data=data, aes(x=reorder(domain, count), y=count)) +
  geom_bar(stat="identity", fill="steelblue", width = 0.7) +
  xlab("Domain") + ylab("# Publications") +
  geom_text(stat='identity', aes(label=count), hjust=+2, size=2.5, colour="white") +
  theme_minimal()
p + coord_flip()




######################
# Timeline
######################
CSV_Text = "year,count
2007,1
2010,1
2011,1
2012,2
2014,1
2016,2
2018,1
2019,1
2020,4
2021,5"
data = read.csv(text=CSV_Text, header=TRUE)

p<-ggplot(data=data, aes(x=year, y=count)) +
  geom_line(color="steelblue", size=1.2) +
  #geom_bar(stat="identity", fill="steelblue", width = 0.7) +
  geom_point(color="steelblue", size=2.5) +
  xlab("Publication year") + ylab("# Publications") +
  scale_x_continuous(breaks = seq(min(data$year), max(data$year))) +
  #geom_text(stat='identity', aes(label=count), vjust=+2, size=4, colour="white") +
  theme_minimal()
p






######################
# Conference Types + Factor BARCHART
######################
CSV_Text = "type,Factor,counter,percentage
on-site,transportation,19,34
on-site,accomodation,11,20
on-site,catering,12,21
on-site,venue,11,20
on-site,ICT,3,5

virtual,transportation,0,0
virtual,accomodation,1,17
virtual,catering,1,17
virtual,venue,0,0
virtual,ICT,4,66

hybrid,transportation,2,50
hybrid,accomodation,0,0
hybrid,catering,0,0
hybrid,venue,0,0
hybrid,ICT,2,50"

CSV_Text = "type,Factor,counter,percentage
on-site,transportation,19,28.35
on-site,accomodation,11,16.41
on-site,catering,12,17.91
on-site,venue,11,16.41
on-site,ICT,3,4.47
on-site,other,11,16.41

virtual,transportation,0,0
virtual,accomodation,1,17
virtual,catering,1,17
virtual,venue,0,0
virtual,ICT,4,66
virtual,other,0,0

hybrid,transportation,2,50
hybrid,accomodation,0,0
hybrid,catering,0,0
hybrid,venue,0,0
hybrid,ICT,2,50
hybrid,other,0,0"
data = read.csv(text=CSV_Text, header=TRUE)

#ggplot(data, aes(x=type, y=factor, fill=percentage)) + 
#  geom_tile()

p<-ggplot(data=data, aes(x=type, y=percentage, fill=Factor)) +
  geom_bar(stat="identity") +
  xlab("Conference Type") + ylab("%")
  #geom_text(stat='identity', aes(label=count), position=position_dodge(0.9), size=3, vjust=-0.5)
p + scale_fill_brewer(palette="Set2") + theme_minimal()








######################
# Dimensions + Conference Types
######################
CSV_Text = "type,Dimension,count
on-site,technical,0
on-site,economic,5
on-site,social,12
on-site,environmental,16
virtual,technical,1
virtual,economic,4
virtual,social,9
virtual,environmental,9
hybrid,technical,1
hybrid,economic,4
hybrid,social,4
hybrid,environmental,3"
data = read.csv(text=CSV_Text, header=TRUE)

p<-ggplot(data=data, aes(x=type, y=count, fill=Dimension)) +
  geom_bar(stat="identity", position=position_dodge()) +
  xlab("Conference Type") + ylab("# Mentions") +
  geom_text(stat='identity', aes(label=count), position=position_dodge(0.9), size=3, vjust=-0.5) +
  theme_minimal()
p + scale_fill_manual(values=c('#D68070', '#77B285', '#D8B95A', '#7CA4C5'))


