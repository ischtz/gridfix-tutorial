# GridFix GLMM R source, generated on 08.05.17, 14:27:17
# input file:	tutorial.csv
# RegionSet:	<gridfix.GridRegionSet (testgrid), size=(800, 600), 8x6 grid, 48 cells, memory=22500.0 kB>
# DV type:	fixated

library(lme4)

data  <- read.table("tutorial.csv", header=T, sep="\t", row.names=NULL)

# Define R factors for all chunking variables and group dummy codes
data$subject_number <- as.factor(data$subject_number)
data$image_id <- as.factor(data$image_id)

# Center and scale predictors
data$fCentr_C <- scale(data$fCentr, center=TRUE, scale=TRUE)
data$fLumin_C <- scale(data$fLumin, center=TRUE, scale=TRUE)

# NOTE: this source code can only serve as a scaffolding for your own analysis!
# You MUST adapt the GLMM model formula below to your model, then uncomment the corresponding line!
#model <- glmer(dvFix ~ 1 + fCentr_C  + fLumin_C  + (1 | image_id), data=data, family=binomial)

save(file="tutorial_GLMM.Rdata", list = c("model"))

print(summary(model))
