library(pdfetch)

#pdfetch_EUROSTAT_DSD("nasa_10_nf_tr")
M3NF1<-pdfetch_EUROSTAT("nasa_10_nf_tr",UNIT="CP_MNAC",NA_ITEM="B1G",SECTOR=c("S11","S12","S13","S14_S15","S2"),DIRECT=c("PAID"))
M3NF1<-as.data.frame(M3NF1)

M3NF2<-pdfetch_EUROSTAT("nasa_10_nf_tr",UNIT="CP_MNAC",NA_ITEM="B1N",SECTOR=c("S11","S12","S13","S14_S15","S2"),DIRECT=c("PAID"))
M3NF2<-as.data.frame(M3NF2)


#pdfetch_EUROSTAT_DSD("nasa_10_f_tr")
M3F<-pdfetch_EUROSTAT("nasa_10_f_tr",UNIT="MIO_NAC",NA_ITEM="F_TR",SECTOR=c("S11","S12","S13","S14_S15","S2"),FINPOS=c("ASS"))
M3F<-as.data.frame(M3F)


#pdfetch_EUROSTAT_DSD("nasa_10_f_bs")
M3BS<-pdfetch_EUROSTAT("nasa_10_f_bs",UNIT="MIO_NAC",NA_ITEM="F",SECTOR=c("S11","S12","S13","S14_S15","S2"),FINPOS=c("ASS"))
M3BS<-as.data.frame(M3BS)

write.csv2(M3BS , "~.\M3BS.csv")
write.csv2(M3F , "~.\M3F.csv")
write.csv2(M3NF1 , "~.\M3NF1.csv")
write.csv2(M3NF2 , "~.\M3NF2.csv")





pdfetch_EUROSTAT_DSD("nasa_10_nf_tr")
pdfetch_EUROSTAT_DSD("nasa_10_f_tr")
pdfetch_EUROSTAT_DSD("nasa_10_f_bs")