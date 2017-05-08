# GridFix GLMM R source, generated on 04.05.17, 15:33:49
# input file:	example2.csv
# RegionSet:	<gridfix.GridRegionSet, size=(800, 600), 8x6 grid, 48 cells, memory=22500.0 kB>
# DV type:	fixated

library(lme4)

data  <- read.table("example2.csv", header=T, sep="\t", row.names=NULL)

# Define R factors for all chunking variables and group dummy codes
data$subject_number <- as.factor(data$subject_number)
data$image_id <- as.factor(data$image_id)

# Center and scale predictors
data$fMapFe_C <- scale(data$fMapFe, center=TRUE, scale=TRUE)

# NOTE: this source code can only serve as a scaffolding for your own analysis!
# You MUST adapt the GLMM model formula below to your model, then uncomment the corresponding line!
#model <- glmer(dvFix ~ 1 + fMapFe_C  + (1 | image_id), control=glmerControl(optimizer="bobyqa"), data=data, family=binomial)

save(file="example2_GLMM.Rdata", list = c("model"))

print(summary(model))
