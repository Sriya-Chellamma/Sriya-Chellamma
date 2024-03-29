setwd("C:/Users/Ramachandran/Desktop/Tableau Docs- BBL/Heart")
heart=read.csv("heart.csv")
str(heart)
library(tidyverse)
library(ggplot2)
hist(heart$�..age)
ggplot(heart,aes(trestbps,�..age, colour=heart$exang))+
  geom_bar(stat="identity")+facet_wrap(~sex)
ggplot(heart,aes(trestbps,�..age, colour=exang,shape=heart))+geom_point()
ggplot(heart,aes(heart$trestbps,heart$�..age))+geom_point()
ggplot(heart,aes(heart$trestbps,heart$chol,colour=sex))+geom_point()
ggplot(heart,aes(heart$cp,heart$sex,fill=sex))+geom_bar(stat="identity")
ggplot(heart,aes(heart$trestbps,heart$thalach,colour=sex))+geom_point()
ggplot(heart,aes(heart$�..age,fill=sex))+geom_histogram(binwidth = 5)
ggplot(heart,aes(heart$�..age,heart$sex,fill=sex))+geom_bar(stat = "identity")
ggplot(heart,aes(heart$trestbps,heart$chol))+geom_bar(stat="identity")
ggplot(heart,aes(heart$cp,heart$fbs,fill=heart$target))+geom_bar(stat="identity")
ggplot(heart,aes(heart$chol,heart$thalach,colour=sex))+geom_point()
ggplot(heart,aes(heart$chol,heart$oldpeak,colour=sex))+geom_point()
ggplot(heart,aes(heart$chol,heart$slope,colour=sex))+geom_bar(stat="identity",
                                                                bins=10,position="dodge")
ggplot(heart,aes(heart$chol,heart$trestbps,colour=sex))+geom_jitter()
ggplot(heart,aes(heart$chol,heart$exang,colour=sex))+geom_jitter()
ggplot(heart,aes(chol,heart$cp,colour=sex))+geom_jitter()
ggplot(heart,aes(chol,heart$fbs,colour=sex))+geom_jitter()
ggplot(heart,aes(chol,heart$restecg,colour=sex))+geom_jitter()
ggplot(heart,aes(chol,heart$slope,colour=sex))+geom_jitter()
ggplot(heart,aes(chol,heart$oldpeak,fill=sex))+geom_bar(stat="identity",
                                                        position="dodge")
ggplot(heart,aes(chol,heart$ca,colour=sex))+geom_jitter()+facet_wrap(~target)
ggplot(heart,aes(chol,heart$thal,colour=sex))+geom_jitter()
ggplot(heart,aes(chol,heart$target,colour=sex))+geom_jitter()
ggplot(heart,aes(chol,heart$�..age,colour=sex))+geom_point()
ggplot(heart,aes(heart$trestbps,heart$cp,colour=sex))+geom_jitter()
ggplot(heart,aes(trestbps,heart$fbs,colour=sex))+geom_jitter()
ggplot(heart,aes(trestbps,heart$restecg,fill=sex))+geom_bar(stat="identity",
                                                              position="dodge")
ggplot(heart,aes(trestbps,heart$thalach,colour=sex))+geom_point()
ggplot(heart,aes(trestbps,heart$exang,colour=sex))+geom_jitter()
ggplot(heart,aes(trestbps,heart$oldpeak,fill=sex))+geom_bar(stat="identity",
                                                              position="dodge")
ggplot(heart,aes(trestbps,heart$oldpeak,colour=sex))+geom_jitter()
ggplot(heart,aes(trestbps,heart$slope,colour=sex))+geom_jitter()
ggplot(heart,aes(trestbps,heart$ca,colour=sex))+geom_jitter()
ggplot(heart,aes(trestbps,heart$thal,colour=sex))+geom_jitter()
ggplot(heart,aes(trestbps,heart$target,colour=sex))+geom_jitter()
ggplot(heart,aes(trestbps,heart$�..age,colour=sex))+geom_point()
ggplot(heart,aes(heart$target,heart$�..age,colour=sex))+geom_jitter()
ggplot(heart,aes(target,heart$cp,colour=sex))+geom_jitter()
ggplot(heart,aes(target,heart$chol,colour=sex))+geom_jitter()
ggplot(heart,aes(target,heart$fbs,colour=sex))+geom_jitter()
ggplot(heart,aes(target,heart$restecg,colour=sex))+geom_jitter()
ggplot(heart,aes(target,heart$thalach,colour=sex))+geom_jitter()
ggplot(heart,aes(target,heart$exang,colour=sex))+geom_jitter()
ggplot(heart,aes(target,heart$oldpeak,colour=sex))+geom_jitter()
ggplot(heart,aes(target,heart$slope,colour=sex))+geom_jitter()
ggplot(heart,aes(target,heart$ca,colour=sex))+geom_jitter()
ggplot(heart,aes(target,heart$thal,colour=sex))+geom_jitter()
ggplot(heart,aes(heart$�..age,heart$chol,colour=sex))+geom_jitter()+facet_wrap(~target)
ggplot(heart,aes(heart$�..age,heart$cp,colour=sex))+geom_jitter()
ggplot(heart,aes(heart$�..age,heart$chol,colour=sex))+geom_jitter()
ggplot(heart,aes(heart$�..age,heart$fbs,colour=sex))+geom_jitter()
ggplot(heart,aes(heart$�..age,heart$restecg,colour=sex))+geom_jitter()
ggplot(heart,aes(heart$�..age,heart$thalach,colour=sex))+geom_point()
ggplot(heart,aes(heart$�..age,heart$exang,colour=sex))+geom_jitter()
ggplot(heart,aes(heart$�..age,heart$oldpeak,colour=sex))+geom_point()
ggplot(heart,aes(heart$�..age,heart$slope,colour=sex))+geom_jitter()
ggplot(heart,aes(heart$�..age,heart$ca,colour=sex))+geom_jitter()
ggplot(heart,aes(heart$�..age,heart$thal,colour=sex))+geom_jitter()
summary(heart)
heart2 <- heart %>% mutate(sex=if_else(sex=="1","MALE","FEMALE"),
         fbs=if_else(fbs==1,"<120",">120"),
         exang=if_else(exang==1,"YES","NO"),
         cp=if_else(cp==1,"ATYPICAL ANGINA",if_else(cp==2,"NON_ANGINAL PAIN",
                                                    "ASYMPTOMATIC")),
         restecg=if_else(restecg==0,"NORMAL",if_else(restecg==1,"ABNORMALITY",
                                                     "PROBABLE OR DEFINITE")),
         slope=as.factor(slope),
         ca=as.factor(ca),
         thal=as.factor(thal),
         target=if_else(target==1,"YES","NO"))
view(heart2)
str(heart2)
heart2$target=as.factor(heart2$target)
age<--heart2$�..age
view(heart2)
heart_trim <- heart2
colnames(heart_trim)[colnames(heart_trim)=="i..age"] = "age"
view(heart_trim)
ggplot(heart2,aes(target,fill=target))+geom_bar()
ggplot(heart2,aes(target,fill=sex))+geom_bar()
hist(heart_trim$�..age)
heart_trim %>% filter(target == "YES") %>% 
  ggplot(heart_trim,aes(i..age))+geom_bar()
ggplot(heart_trim,aes(heart_trim$sex,heart_trim$trestbps))
ggplot(heart_trim,aes(sex,trestbps))+geom_boxplot(fill='purple')+facet_grid(~cp)
ggplot(heart_trim,aes(sex,chol))+geom_boxplot(fill='yellow')+facet_grid(~cp)
heart2$sex=as.factor(heart2$sex)
heart2$target=as.factor(heart2$target)
heart2$exang=as.factor(heart2$exang)
m1=glm(heart2$�..age+heart2$trestbps+heart2$chol+heart2$thalach,heart2,family=binomial())
model2=glm(heart2$�..age+heart2$trestbps+heart2$chol+heart2$thalach,family=binomial(),heart2)
m2=glm(target~sex+cp+chol+trestbps+thalach,family = binomial(),heart2)
summary(m2)
pr=predict(m2,heart2)
head(pr)
pr1=ifelse(pr>.7,1,0)
head(pr1)
table(pr1,heart2$target)
m3=glm(target~.,family=binomial(),heart2)
summary(m3)
pr3=predict(m3,heart2)
head(pr3)
prr=ifelse(pr3>.7,1,0)
head(prr)
table(prr,heart2$target)


summary(model)
library(corrplot)
install.packages("ggcorrplot")
library(ggcorrplot)
view(heart_trim)
names(heart_trim)

model3=glm(target~sex+cp+thalach+exang+ca,family = binomial(),heart2)
summary(model3)
prediction=predict(model3,heart2)
head(prediction)
prediction=ifelse(prediction>.7,1,0)
head(prediction)
table(prediction,heart2$target)
model3=glm(target~heart2$sex+heart2$cp+heart2$thalach
           +heart2$exang+heart2$oldpeak,family = binomial(),heart2)
summary(model3)
predi=predict(model3,heart2$target)
predi=ifelse(predi>.5,1,0)
head(predi)
table(predi,heart2$target)


cor(heart_trim[,10:14])
corr_heart <- cor(heart_trim)
corrplot(heart_trim,method="square", type="upper")
corrplot(corr,method="circle")
ggcorrplot(cor(heart_trim))
