datFiles <- list.files(path=".",pattern="so2",all.files=FALSE,full.names=FALSE)

checkVog <- function(time2,s1,s2,s3,s4,s5,s6,s7,s8,s9) {
	if(s1>0|s2>0|s3>0|s4>0|s5>0|s6>0|s7>0|s8>0|s9>0) {
	return(time2)
	}
}

for(k in 1:length(datFiles)){
dat1 <- read.table(file=datFiles[k], header = FALSE, skip=1, col.names=c("JDAY", "YR", "MO", "DA1", "HR1", "MN1", "DA2", "HR2", "MN2", "S01", "S02", "S03", "S04", "S05", "S06", "S07", "S08", "S09", "S10", "S11", "S12", "S13", "S14", "S15", "S16", "S17", "S18", "S19", "S20", "S21", "S22", "S23", "S24", "S25", "S26", "S27", "S28", "S29", "S30", "S31", "S32", "S33", "S34", "S35", "S36", "S37", "S38", "S39", "S40", "S41", "S42", "S43", "S44", "S45", "S46", "S47", "S48", "S49", "S50", "S51", "S52", "S53", "S54", "S55", "S56", "S57", "S58", "S59", "S60", "S61", "S62", "S63", "S64", "S65", "S66", "S67", "S68", "S69", "S70", "S71", "S72", "S73", "S74", "S75", "S76", "S77", "S78", "S79", "S80", "S81", "S82", "S83", "S84", "S85", "S86", "S87", "S88", "S89", "S90", "S91", "S92", "S93", "S94", "S95","S96","S97","S98","S99","S100","S101","S102","S103","S104","S105","S106","S107","S108","S109","S110","S111","S112","S113","S114","S115","S116","S117", "S118", "S119", "S120", "S121", "S122", "S123", "S124", "S125", "S126", "S127", "S128", "S129", "S130", "S131", "S132", "S133", "S134", "S135", "S136", "S137", "S138", "S139", "S140", "S141", "S142", "S143", "S144", "S145", "S146", "S147", "S148", "S149", "S150", "S151", "S152", "S153"))

dat1$MO <- sprintf(fmt="%02d", dat1$MO)

dat1$DA1 <- sprintf(fmt="%02d", dat1$DA1)
dat1$HR1 <- sprintf(fmt="%02d", dat1$HR1)
dat1$MN1 <- sprintf(fmt="%02d", dat1$MN1)
dat1$DA2 <- sprintf(fmt="%02d", dat1$DA2)
dat1$HR2 <- sprintf(fmt="%02d", dat1$HR2)
dat1$MN2 <- sprintf(fmt="%02d", dat1$MN2)

tmp1 <- paste0("20", dat1$YR, dat1$MO, dat1$DA1, dat1$HR1, dat1$MN1)
tmp2 <- paste0("20", dat1$YR, dat1$MO, dat1$DA2, dat1$HR2, dat1$MN2)

date1 <- strptime(x=tmp1, format="%Y%m%d%H%M", tz="HST")
date2 <- strptime(x=tmp2, format="%Y%m%d%H%M", tz="HST")

if(is.na(date2[1])){
	next
}

if(length(date2)<12){
	shortDate <- length(date2)
} else{
	shortDate <- 12
}

for(i in 1:shortDate){
	vogOut <-checkVog(date2[i],dat1$S136[i],dat1$S137[i],dat1$S138[i],dat1$S139[i],dat1$S140[i],dat1$S141[i],dat1$S142[i],dat1$S143[i],dat1$S144[i])
	if(is.null(vogOut)!=TRUE){
		printVog <- strftime(x=vogOut, format="%Y-%m-%d %H:%M:00", tz="HST")
		write.table(printVog,file="vogDaysSO2.txt",append=TRUE, row.names=FALSE, col.names=FALSE)
	}
}
}

datFiles2 <- list.files(path=".",pattern="so4",all.files=FALSE,full.names=FALSE)

for(k in 1:length(datFiles2)){
dat <- read.table(file=datFiles2[k], header = FALSE, skip=1, col.names=c("JDAY", "YR", "MO", "DA1", "HR1", "MN1", "DA2", "HR2", "MN2", "S01", "S02", "S03", "S04", "S05", "S06", "S07", "S08", "S09", "S10", "S11", "S12", "S13", "S14", "S15", "S16", "S17", "S18", "S19", "S20", "S21", "S22", "S23", "S24", "S25", "S26", "S27", "S28", "S29", "S30", "S31", "S32", "S33", "S34", "S35", "S36", "S37", "S38", "S39", "S40", "S41", "S42", "S43", "S44", "S45", "S46", "S47", "S48", "S49", "S50", "S51", "S52", "S53", "S54", "S55", "S56", "S57", "S58", "S59", "S60", "S61", "S62", "S63", "S64", "S65", "S66", "S67", "S68", "S69", "S70", "S71", "S72", "S73", "S74", "S75", "S76", "S77", "S78", "S79", "S80", "S81", "S82", "S83", "S84", "S85", "S86", "S87", "S88", "S89", "S90", "S91", "S92", "S93", "S94", "S95","S96","S97","S98","S99","S100","S101","S102","S103","S104","S105","S106","S107","S108","S109","S110","S111","S112","S113","S114","S115","S116","S117", "S118", "S119", "S120", "S121", "S122", "S123", "S124", "S125", "S126", "S127", "S128", "S129", "S130", "S131", "S132", "S133", "S134", "S135", "S136", "S137", "S138", "S139", "S140", "S141", "S142", "S143", "S144", "S145", "S146", "S147", "S148", "S149", "S150", "S151", "S152", "S153"))

dat$MO <- sprintf(fmt="%02d", dat$MO)

dat$DA1 <- sprintf(fmt="%02d", dat$DA1)
dat$HR1 <- sprintf(fmt="%02d", dat$HR1)
dat$MN1 <- sprintf(fmt="%02d", dat$MN1)
dat$DA2 <- sprintf(fmt="%02d", dat$DA2)
dat$HR2 <- sprintf(fmt="%02d", dat$HR2)
dat$MN2 <- sprintf(fmt="%02d", dat$MN2)

tmp1 <- paste0("20", dat$YR, dat$MO, dat$DA1, dat$HR1, dat$MN1)
tmp2 <- paste0("20", dat$YR, dat$MO, dat$DA2, dat$HR2, dat$MN2)

date1 <- strptime(x=tmp1, format="%Y%m%d%H%M", tz="HST")
date2 <- strptime(x=tmp2, format="%Y%m%d%H%M", tz="HST")

if(is.na(date2[1])){
	next
}

if(length(date2)<12){
	shortDate2 <- length(date2)
} else{
	shortDate2 <- 12
}

for(i in 1:shortDate2){
	vogOut <-checkVog(date2[i],dat$S136[i],dat$S137[i],dat$S138[i],dat$S139[i],dat$S140[i],dat$S141[i],dat$S142[i],dat$S143[i],dat$S144[i])
	if(is.null(vogOut)!=TRUE){
		printVog2 <- strftime(x=vogOut, format="%Y-%m-%d %H:%M:00", tz="HST")
		write.table(printVog2,file="vogDaysSO4.txt",append=TRUE, row.names=FALSE, col.names=FALSE)
	}
}
}

datFiles3 <- list.files(path=".",pattern="so2",all.files=FALSE,full.names=FALSE)

checkSun <- function(time2,s1,s2,s3,s4,s5,s6,s7,s8,s9) {
	if(s1==0&s2==0&s3==0&s4==0&s5==0&s6==0&s7==0&s8==0&s9==0) {
	return(time2)
	}
}

for(k in 1:length(datFiles3)){
dat <- read.table(file=datFiles3[k], header = FALSE, skip=1, col.names=c("JDAY", "YR", "MO", "DA1", "HR1", "MN1", "DA2", "HR2", "MN2", "S01", "S02", "S03", "S04", "S05", "S06", "S07", "S08", "S09", "S10", "S11", "S12", "S13", "S14", "S15", "S16", "S17", "S18", "S19", "S20", "S21", "S22", "S23", "S24", "S25", "S26", "S27", "S28", "S29", "S30", "S31", "S32", "S33", "S34", "S35", "S36", "S37", "S38", "S39", "S40", "S41", "S42", "S43", "S44", "S45", "S46", "S47", "S48", "S49", "S50", "S51", "S52", "S53", "S54", "S55", "S56", "S57", "S58", "S59", "S60", "S61", "S62", "S63", "S64", "S65", "S66", "S67", "S68", "S69", "S70", "S71", "S72", "S73", "S74", "S75", "S76", "S77", "S78", "S79", "S80", "S81", "S82", "S83", "S84", "S85", "S86", "S87", "S88", "S89", "S90", "S91", "S92", "S93", "S94", "S95","S96","S97","S98","S99","S100","S101","S102","S103","S104","S105","S106","S107","S108","S109","S110","S111","S112","S113","S114","S115","S116","S117", "S118", "S119", "S120", "S121", "S122", "S123", "S124", "S125", "S126", "S127", "S128", "S129", "S130", "S131", "S132", "S133", "S134", "S135", "S136", "S137", "S138", "S139", "S140", "S141", "S142", "S143", "S144", "S145", "S146", "S147", "S148", "S149", "S150", "S151", "S152", "S153"))

dat$MO <- sprintf(fmt="%02d", dat$MO)

dat$DA1 <- sprintf(fmt="%02d", dat$DA1)
dat$HR1 <- sprintf(fmt="%02d", dat$HR1)
dat$MN1 <- sprintf(fmt="%02d", dat$MN1)
dat$DA2 <- sprintf(fmt="%02d", dat$DA2)
dat$HR2 <- sprintf(fmt="%02d", dat$HR2)
dat$MN2 <- sprintf(fmt="%02d", dat$MN2)

tmp1 <- paste0("20", dat$YR, dat$MO, dat$DA1, dat$HR1, dat$MN1)
tmp2 <- paste0("20", dat$YR, dat$MO, dat$DA2, dat$HR2, dat$MN2)

date1 <- strptime(x=tmp1, format="%Y%m%d%H%M", tz="HST")
date2 <- strptime(x=tmp2, format="%Y%m%d%H%M", tz="HST")

if(is.na(date2[1])){
	next
}

if(length(date2)<12){
	shortDate <- length(date2)
} else{
	shortDate <- 12
}

for(i in 1:shortDate){
	sunOut <-checkSun(date2[i],dat$S136[i],dat$S137[i],dat$S138[i],dat$S139[i],dat$S140[i],dat$S141[i],dat$S142[i],dat$S143[i],dat$S144[i])
	if(is.null(sunOut)!=TRUE){
		printSun <- strftime(x=sunOut, format="%Y-%m-%d %H:%M:00", tz="HST")
		write.table(printSun,file="sunDaysSO2.txt",append=TRUE, row.names=FALSE, col.names=FALSE)
	}
}
}

datFiles4 <- list.files(path=".",pattern="so4",all.files=FALSE,full.names=FALSE)

for(k in 1:length(datFiles2)){
dat <- read.table(file=datFiles2[k], header = FALSE, skip=1, col.names=c("JDAY", "YR", "MO", "DA1", "HR1", "MN1", "DA2", "HR2", "MN2", "S01", "S02", "S03", "S04", "S05", "S06", "S07", "S08", "S09", "S10", "S11", "S12", "S13", "S14", "S15", "S16", "S17", "S18", "S19", "S20", "S21", "S22", "S23", "S24", "S25", "S26", "S27", "S28", "S29", "S30", "S31", "S32", "S33", "S34", "S35", "S36", "S37", "S38", "S39", "S40", "S41", "S42", "S43", "S44", "S45", "S46", "S47", "S48", "S49", "S50", "S51", "S52", "S53", "S54", "S55", "S56", "S57", "S58", "S59", "S60", "S61", "S62", "S63", "S64", "S65", "S66", "S67", "S68", "S69", "S70", "S71", "S72", "S73", "S74", "S75", "S76", "S77", "S78", "S79", "S80", "S81", "S82", "S83", "S84", "S85", "S86", "S87", "S88", "S89", "S90", "S91", "S92", "S93", "S94", "S95","S96","S97","S98","S99","S100","S101","S102","S103","S104","S105","S106","S107","S108","S109","S110","S111","S112","S113","S114","S115","S116","S117", "S118", "S119", "S120", "S121", "S122", "S123", "S124", "S125", "S126", "S127", "S128", "S129", "S130", "S131", "S132", "S133", "S134", "S135", "S136", "S137", "S138", "S139", "S140", "S141", "S142", "S143", "S144", "S145", "S146", "S147", "S148", "S149", "S150", "S151", "S152", "S153"))

dat$MO <- sprintf(fmt="%02d", dat$MO)

dat$DA1 <- sprintf(fmt="%02d", dat$DA1)
dat$HR1 <- sprintf(fmt="%02d", dat$HR1)
dat$MN1 <- sprintf(fmt="%02d", dat$MN1)
dat$DA2 <- sprintf(fmt="%02d", dat$DA2)
dat$HR2 <- sprintf(fmt="%02d", dat$HR2)
dat$MN2 <- sprintf(fmt="%02d", dat$MN2)

tmp1 <- paste0("20", dat$YR, dat$MO, dat$DA1, dat$HR1, dat$MN1)
tmp2 <- paste0("20", dat$YR, dat$MO, dat$DA2, dat$HR2, dat$MN2)

date1 <- strptime(x=tmp1, format="%Y%m%d%H%M", tz="HST")
date2 <- strptime(x=tmp2, format="%Y%m%d%H%M", tz="HST")

if(is.na(date2[1])){
	next
}

if(length(date2)<12){
	shortDate2 <- length(date2)
} else{
	shortDate2 <- 12
}

for(i in 1:shortDate2){
	sunOut <-checkSun(date2[i],dat$S136[i],dat$S137[i],dat$S138[i],dat$S139[i],dat$S140[i],dat$S141[i],dat$S142[i],dat$S143[i],dat$S144[i])
	if(is.null(sunOut)!=TRUE){
		printSun2 <- strftime(x=sunOut, format="%Y-%m-%d %H:%M:00", tz="HST")
		write.table(printSun2,file="sunDaysSO4.txt",append=TRUE, row.names=FALSE, col.names=FALSE)
	}
}
}

#IMPORTANT: change name of file based on site location
solarData <- read.table(file="solar_data_UH_Manoa.txt", header = FALSE, skip=1, col.names=c("year", "month", "day", "hour", "solar"))
solarData$hour <- sprintf(fmt="%02d", solarData$hour)
solarData$month <- sprintf(fmt="%02d", solarData$month)
solarData$day <- sprintf(fmt="%02d", solarData$day)
tmp <- paste0(solarData$year, solarData$month, solarData$day, solarData$hour)
date <- strptime(x=tmp, format="%Y%m%d%H", tz="HST")
dateHours <- strftime(x=date, format="%H", tz="HST")

so2Data <- read.table(file="vogDaysSO2.txt", header=FALSE)
so4Data <- read.table(file="vogDaysSO4.txt", header=FALSE)

vogData <- rbind(so2Data,so4Data)
uniqVog <- unique(vogData)

vogDate <- strptime(x=uniqVog$V1, format="%Y-%m-%d %H:00:00", tz="HST")

tmpDates <- match(vogDate,date,nomatch=NULL)
sameDates <- unique(tmpDates)

sameDates2 <- which((date%in%vogDate)&(dateHours%in%c("07","08","09","10","11","12","13","14","15","16","17","18","19")))

for(i in sameDates2){
	radiation <- solarData$solar[i]
	solarDates <- date[i]
	write.table(data.frame(solarDates,radiation),file="vogDaysRadiation.txt",append=TRUE,row.names=FALSE,col.names=FALSE)
}


so2SunData <- read.table(file="sunDaysSO2.txt", header=FALSE)
so4SunData <- read.table(file="sunDaysSO4.txt", header=FALSE)

sunData <- rbind(so2SunData,so4SunData)
uniqSun <- unique(sunData)

sunDate <- strptime(x=uniqSun$V1, format="%Y-%m-%d %H:00:00", tz="HST")

#tmpDates <- match(vogDate,date,nomatch=NULL)
#sameDates <- unique(tmpDates)

sameDates2 <- which((date%in%sunDate)&(dateHours%in%c("07","08","09","10","11","12","13","14","15","16","17","18","19")))

for(i in sameDates2){
	radiation <- solarData$solar[i]
	solarDates <- date[i]
	write.table(data.frame(solarDates,radiation),file="sunDaysRadiation.txt",append=TRUE,row.names=FALSE,col.names=FALSE)
}