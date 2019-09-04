colnames <- c("ID","RI", "Na", "Mg", "Al", "Si", "K", "Ca","Ba","Fe","Type");

predictores <- c("RI", "Na", "Mg", "Al", "Si", "K", "Ca","Ba","Fe");

class <- c("Class 1", "Class 2", "Class 3", "Class 4", "Class 5", "Class 6", "Class 7");

dataset = data = read.table(file="http://archive.ics.uci.edu/ml/machine-learning-databases/glass/glass.data",
                            head=FALSE, 
                            sep=",",
                            dec=".",
                            row.names=1,
                            col.names =colnames
);




View(dataset);

attach(dataset);

resumo_data_set = summary(dataset);
pairs(dataset[,1:9])

install.packages("corrplot");

library(corrplot);

preditores = dataset[,1:9];
summary(preditores);
View(preditores);

?corrplot

# primeiro fazemos a matriz de correlação
M <- cor(preditores)

corrplot(M , method="number",bg="gray")
corrplot(M,bg="black")
corrplot(M , method="color") 
corrplot(M , method="ellipse")
corrplot(M , method="shade") 

