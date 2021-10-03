##################
# a n a l y s i s . r #
# Denis RONCHESE #
##################

setwd ("~/Desktop/Homework/analysis")

###### CREATING THE DATA FRAME FOR INPUT DATA #######

################################################################
 # C re a te the t a b l e o f data o f the expe rimen t #
 # LEGEND | FACTOR DESCRIPTION | LEVELS #
 # A | Hand used | [ Le f t , Right ] #
 # B | Eyes | [ Closed , Open ] #
 # C | Volume l e v e l | [ Muted , Up] #
 # D | Metronome BPM | [ 1 0 0 , 1 4 0] #
 # E | Sound patch | [ Ac . piano , El . pi an o ] #
 ################################################################
 # The measure i s the number o f ERRORS wi t hi n the whole ph r a se
 lvl<-c(-1,1) # c r e a t e a v e c t o r o f bi n a r y v al u e s r e p r e s e n t i n g the l e v e l s
 dm<-expand.grid (A = lvl , B = lvl , C = lvl , D = lvl , E = lvl)
 dm<-data.frame ( StdOrder = c ( 1 : nrow (dm)) ,dm)
 dm<-data.frame ( RunOrder = sample ( nrow (dm) ) , dm)
 dm<-dm[ order(dm$RunOrder ) , ]
 data<-NA
 df<-data.frame (dm, Data = data ) 
 write.table(df,"~/Desktop/Homework/analysis/data.dat" , row = F)
 ####! ! ! ! !DON'T EXECUTE THIS COMMENTED PART! ! ! ! !######

 ###### LOADING THE DATA FILE FOR ANALYSIS ######
 # The v al u e s a r e then c ompiled from the . dat file and then simply loaded
 df<-read.table( "data.dat",header = T)
 attach(df)

 ##########################################################
 
 