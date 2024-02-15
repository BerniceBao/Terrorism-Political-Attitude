#### Preamble ####
# Purpose: Simulating data on survery results 
# Authors: Zheng(Zeb) Yang, Jingcheng Yang, Bernice(Yixuan) Bao
# Contact: zhengzeb.yang@mail.utoronto.ca, jingcheng.yang@mail.utoronto.ca, bernice.bao@mail.utoronto.ca
# Pre-requisites: -

library(here)
library(readr)

set.seed(812)


Author <- sample(c('Aber et al.','Abrams et al.', 'Aizpurua et al..', 
                   'Anonymous', 'Argyrides & Downey', 'Arian',
                   'Arvanitidis, Economou, & Kollias', 'Asbrock & Fritsche', 
                   'Aytac & Carkoglu'), size = 100, replace = TRUE)


year <- sample(c(1989,2019), size = 100, replace = TRUE)

TypeReport <- sample(c(x = 1:4), size = 100, replace = TRUE)

ImpactFactor <- runif(100, 0, 3)

Theory_A <- sample(c('ITT','TMT', 'Us vs Them', 'People Apart Syndrome', 'RWA', 'Conservative shift'), size = 100, replace = TRUE)

Theory_B <- sample(c('Contact theory','Group-threat', 'Leadership and Competence'), size = 100, replace = TRUE)

Theory_C <- sample(c('Rally-around-the-flag','Issue Ownership; TMT'), size = 100, replace = TRUE)

Hypotheses <- sample(c(0,1), size = 100, replace = TRUE)

Definition <- sample(c(0,1), size = 100, replace = TRUE)

ID_S <- sample(c(0,1), size = 100, replace = TRUE)

ID_RS <- sample(c(100011:100881), size = 100, replace = TRUE)

Preregistration <- sample(c(0,1), size = 100, replace = TRUE)

TypeStudy <- sample(c(x = 1:4), size = 100, replace = TRUE)

Country <- sample(c('US', 'Israel', 'Spain', 'Norway', 'Belgium', 'France', 'Germany', 'Turkey'), size = 100, replace = TRUE)

StudyYear <- sample(c(1988,2019), size = 100, replace = TRUE)

SampleSize <- sample(c(x = 99:1500), size = 100, replace = TRUE)

GeneralPop <- sample(c(0,1), size = 100, replace = TRUE)

StudentPop <- sample(c(0,1), size = 100, replace = TRUE)

SampleExact <- sample(c('NYC Youth', '2 Nationally representative surveys', 'Nationally representative survey', 'University students', 'Israeli adults', 'ESS participants', 'University students (psychology)', 'Representative sample of Turkish adults
'), size = 100, replace = TRUE)

NR_AT <- sample(c(0,1), size = 100, replace = TRUE)

IV_Quality <- sample(c(0,1), size = 100, replace = TRUE)

Attack <- sample(c(0,1), size = 100, replace = TRUE)

AgeRange <- sample(c('12-20','16-98','18-26','18-90'), size = 100, replace = TRUE)

EthCat <- sample(c(x = 1:4), size = 100, replace = TRUE)

ID_IV <- sample(c(x = 1:5), size = 100, replace = TRUE)




IV_Exact <- sample(c('Direct exposure','Media exposure', 'Family exposure', 'Terrorist attack',
                     'Perceived national threat', 'Perceived local threat', 'Perceived personal threat',
                     'Manipulated personal threat', '9/11 TV use'), size = 100, replace = TRUE)

IV_Code <- sample(c(x = 1:10), size = 100, replace = TRUE)

ExactAttack <- sample(c('9/11 Attacks', '7/07 London Bombings', 'Israeli-Palestinian conflict', '11/03 Madrid', '2011 Utoya attacks', '2014 Jewish Museum of Belgium shooting', 'Charlie Hebdo attacks'), size = 100, replace = TRUE)

DV_Exact <- sample(c('Prejudice towards immigrants','Security index', 'Political ideology (conservatism)', 'Political trust',
                     'Support for immigration', 'Prejudice', 'Authoritarianism',
                     'Policy preferences', 'Institutional trust'), size = 100, replace = TRUE)

DV_Quality <- sample(c(0,3), size = 100, replace = TRUE)



survey_sim <- data.frame(
  Author,
  year,
  TypeReport,
  ImpactFactor,
  Theory_A,
  Theory_B,
  Theory_C,
  Hypotheses,
  Definition,
  ID_S,
  ID_RS,
  Preregistration,
  TypeStudy,
  Country,
  StudyYear,
  SampleSize,
  GeneralPop,
  StudentPop,
  SampleExact,
  NR_AT,
  IV_Quality,
  Attack,
  AgeRange,
  EthCat,
  ID_IV,
  IV_Exact,
  IV_Code,
  ExactAttack,
  DV_Exact,
  DV_Quality
  )

# write simulation onto csv for testing
write_csv(survey_sim, here::here("inputs/data/sim.csv"))
