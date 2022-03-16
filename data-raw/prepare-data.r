##################################################################
##       AIM: Transform data-raw for RShiny visualisation       ##
##################################################################
# CHARTS

##################################################################
##                        Concentrations                        ## done
##################################################################
# Read exposures data
load("data-raw/Concentrations/UnweightedCountryExposures.RData")
load("data-raw/Concentrations/UnweightedGBDRegionExposures.RData")
load("data-raw/Concentrations/UnweightedGlobalExposures.RData")
load("data-raw/Concentrations/UnweightedSDGRegionExposures.RData")
load("data-raw/Concentrations/UnweightedWHOIncomeRegionExposures.RData")
load("data-raw/Concentrations/UnweightedWHORegionExposures.RData")
# Bind exposures data
concentrations_unweighted_exposures = rbind(
  UnweightedCountry %>% mutate (name = "Unweighted Country"),
  UnweightedGBDRegion %>% mutate (name = "Unweighted GBD Region"),
  UnweightedGlobal %>% mutate (name = "Unweighted Global"),
  UnweightedSDGRegion %>% mutate (name = "Unweighted SDG Region"),
  UnweightedWHOIncomeRegion %>% mutate (name = "Unweighted WHO Income Region"),
  UnweightedWHORegion %>% mutate (name = "Unweighted WHO Region")
) %>% select(-c(Type))
# Clear environment
rm(
  UnweightedCountry,
  UnweightedGBDRegion,
  UnweightedGlobal,
  UnweightedSDGRegion,
  UnweightedWHOIncomeRegion,
  UnweightedWHORegion
)

# Read exposure change data
load("data-raw/Concentrations/UnweightedCountryExposures_Changes.RData")
load("data-raw/Concentrations/UnweightedGBDRegionExposures_Changes.RData")
load("data-raw/Concentrations/UnweightedGlobalExposures_Changes.RData")
load("data-raw/Concentrations/UnweightedSDGRegionExposures_Changes.RData")
load("data-raw/Concentrations/UnweightedWHOIncomeRegionExposures_Changes.RData")
load("data-raw/Concentrations/UnweightedWHORegionExposures_Changes.RData")

concentrations_unweighted_exposures_diff = rbind(
  UnweightedCountry_diff       %>% mutate (name = "Unweighted Country"),
  UnweightedGBDRegion_diff      %>% mutate (name = "Unweighted GBD Region"),
  UnweightedGlobal_diff  %>% mutate (name = "Unweighted Global"),
  UnweightedSDGRegion_diff       %>% mutate (name = "Unweighted SDG Region"),
  UnweightedWHOIncomeRegion_diff    %>% mutate (name = "Unweighted WHO Income Region"),
  UnweightedWHORegion_diff           %>% mutate (name = "Unweighted WHO Region")
)

rm(
  UnweightedGBDRegion_diff,
  UnweightedCountry_diff,
  UnweightedGlobal_diff,
  UnweightedWHOIncomeRegion_diff,
  UnweightedWHORegion_diff,
  UnweightedSDGRegion_diff
)

concentrations_unweighted_exposures = rbind(concentrations_unweighted_exposures,concentrations_unweighted_exposures_diff)

usethis::use_data(concentrations_unweighted_exposures, overwrite = TRUE)

#################################################################
##                         Exceedances                         ## done
#################################################################
#10
load("data-raw/Exceedances/10/Country.RData")
load("data-raw/Exceedances/10/GBDRegion.RData")
load("data-raw/Exceedances/10/GBDSuperRegion.RData")
load("data-raw/Exceedances/10/Global.RData")
load("data-raw/Exceedances/10/SDGRegion.RData")
load("data-raw/Exceedances/10/WHOIncomeRegion.RData")
load("data-raw/Exceedances/10/WHORegion.RData")

Exceed_10 = rbind(
  Exceed_Country %>% mutate (Category = "Country") %>% rename_at(1,  ~ "ID"),
  Exceed_GBDRegion %>% mutate (Category = "GBD Region") %>% rename_at(1,  ~
                                                                        "ID"),
  Exceed_Global %>% mutate (Category = "Global") %>% rename_at(1,  ~ "ID"),
  Exceed_SDGRegion %>% mutate (Category = "SDG Region") %>% rename_at(1,  ~
                                                                        "ID"),
  Exceed_GBDSuperRegion %>% mutate (Category = "GBD Super Region") %>% rename_at(1,  ~
                                                                                   "ID"),
  Exceed_WHOIncomeRegion %>% mutate (Category = "WHO Income Region") %>% rename_at(1,  ~
                                                                                     "ID"),
  Exceed_WHORegion %>% mutate (Category = "WHO Region") %>% rename_at(1,  ~
                                                                        "ID")
) %>% gather("Year", "Value", Perc2016:Perc2010) %>%
  mutate(Year = as.numeric(sub("....", "", Year))) %>%
  mutate(Scale = 10)

rm(
  Exceed_GBDRegion,
  Exceed_Country,
  Exceed_Global,
  Exceed_GBDSuperRegion,
  Exceed_WHOIncomeRegion,
  Exceed_WHORegion,
  Exceed_SDGRegion
)

# 15
load("data-raw/Exceedances/15/Country.RData")
load("data-raw/Exceedances/15/GBDRegion.RData")
load("data-raw/Exceedances/15/GBDSuperRegion.RData")
load("data-raw/Exceedances/15/Global.RData")
load("data-raw/Exceedances/15/SDGRegion.RData")
load("data-raw/Exceedances/15/WHOIncomeRegion.RData")
load("data-raw/Exceedances/15/WHORegion.RData")

Exceed_15 = rbind(
  Exceed_Country %>% mutate (Category = "Country") %>% rename_at(1,  ~ "ID"),
  Exceed_GBDRegion %>% mutate (Category = "GBD Region") %>% rename_at(1,  ~
                                                                        "ID"),
  Exceed_Global %>% mutate (Category = "Global") %>% rename_at(1,  ~ "ID"),
  Exceed_SDGRegion %>% mutate (Category = "SDG Region") %>% rename_at(1,  ~
                                                                        "ID"),
  Exceed_GBDSuperRegion %>% mutate (Category = "GBD Super Region") %>% rename_at(1,  ~
                                                                                   "ID"),
  Exceed_WHOIncomeRegion %>% mutate (Category = "WHO Income Region") %>% rename_at(1,  ~
                                                                                     "ID"),
  Exceed_WHORegion %>% mutate (Category = "WHO Region") %>% rename_at(1,  ~
                                                                        "ID")
) %>% gather("Year", "Value", Perc2016:Perc2010) %>%
  mutate(Year = as.numeric(sub("....", "", Year))) %>%
  mutate(Scale = 15)

rm(
  Exceed_GBDRegion,
  Exceed_Country,
  Exceed_Global,
  Exceed_WHOIncomeRegion,
  Exceed_GBDSuperRegion,
  Exceed_WHORegion,
  Exceed_SDGRegion
)


# 25
load("data-raw/Exceedances/25/Country.RData")
load("data-raw/Exceedances/25/GBDRegion.RData")
load("data-raw/Exceedances/25/GBDSuperRegion.RData")
load("data-raw/Exceedances/25/Global.RData")
load("data-raw/Exceedances/25/SDGRegion.RData")
load("data-raw/Exceedances/25/WHOIncomeRegion.RData")
load("data-raw/Exceedances/25/WHORegion.RData")

Exceed_25 = rbind(
  Exceed_Country %>% mutate (Category = "Country") %>% rename_at(1,  ~ "ID"),
  Exceed_GBDRegion %>% mutate (Category = "GBD Region") %>% rename_at(1,  ~
                                                                        "ID"),
  Exceed_Global %>% mutate (Category = "Global") %>% rename_at(1,  ~ "ID"),
  Exceed_GBDSuperRegion %>% mutate (Category = "GBD Super Region") %>% rename_at(1,  ~
                                                                                   "ID"),
  Exceed_SDGRegion %>% mutate (Category = "SDG Region") %>% rename_at(1,  ~
                                                                        "ID"),
  Exceed_WHOIncomeRegion %>% mutate (Category = "WHO Income Region") %>% rename_at(1,  ~
                                                                                     "ID"),
  Exceed_WHORegion %>% mutate (Category = "WHO Region") %>% rename_at(1,  ~
                                                                        "ID")
) %>% gather("Year", "Value", Perc2016:Perc2010) %>%
  mutate(Year = as.numeric(sub("....", "", Year))) %>%
  mutate(Scale = 25)

rm(
  Exceed_GBDRegion,
  Exceed_Country,
  Exceed_Global,
  Exceed_WHOIncomeRegion,
  Exceed_GBDSuperRegion,
  Exceed_WHORegion,
  Exceed_SDGRegion
)


# 35
load("data-raw/Exceedances/35/Country.RData")
load("data-raw/Exceedances/35/GBDRegion.RData")
load("data-raw/Exceedances/35/GBDSuperRegion.RData")
load("data-raw/Exceedances/35/Global.RData")
load("data-raw/Exceedances/35/SDGRegion.RData")
load("data-raw/Exceedances/35/WHOIncomeRegion.RData")
load("data-raw/Exceedances/35/WHORegion.RData")

Exceed_35 = rbind(
  Exceed_Country %>% mutate (Category = "Country") %>% rename_at(1,  ~ "ID"),
  Exceed_GBDRegion %>% mutate (Category = "GBD Region") %>% rename_at(1,  ~
                                                                        "ID"),
  Exceed_Global %>% mutate (Category = "Global") %>% rename_at(1,  ~ "ID"),
  Exceed_GBDSuperRegion %>% mutate (Category = "GBD Super Region") %>% rename_at(1,  ~
                                                                                   "ID"),
  Exceed_SDGRegion %>% mutate (Category = "SDG Region") %>% rename_at(1,  ~
                                                                        "ID"),
  Exceed_WHOIncomeRegion %>% mutate (Category = "WHO Income Region") %>% rename_at(1,  ~
                                                                                     "ID"),
  Exceed_WHORegion %>% mutate (Category = "WHO Region") %>% rename_at(1,  ~
                                                                        "ID")
) %>% gather("Year", "Value", Perc2016:Perc2010) %>%
  mutate(Year = as.numeric(sub("....", "", Year))) %>%
  mutate(Scale = 35)

rm(
  Exceed_GBDRegion,
  Exceed_Country,
  Exceed_Global,
  Exceed_WHOIncomeRegion,
  Exceed_GBDSuperRegion,
  Exceed_WHORegion,
  Exceed_SDGRegion
)

exceed = rbind(Exceed_10, Exceed_15, Exceed_25, Exceed_35)
rm(Exceed_10, Exceed_15, Exceed_25, Exceed_35)

usethis::use_data(exceed, overwrite = TRUE)
#################################################################
##                          Exposures                          ## todo
#################################################################
load("data-raw/Exposures/WeightedCountryExposures.RData")
load("data-raw/Exposures/WeightedGBDRegionExposures.RData")
load("data-raw/Exposures/WeightedGBDSuperRegionExposures.RData")
load("data-raw/Exposures/WeightedGlobalExposures.RData")
load("data-raw/Exposures/WeightedSDGRegionExposures.RData")
load("data-raw/Exposures/WeightedWHOIncomeRegionExposures.RData")
load("data-raw/Exposures/WeightedWHORegionExposures.RData")

weighted_exposures = rbind(
  WeightedCountry %>% mutate(Category = "Country"),
  WeightedGBDRegion %>% mutate(Category = "GBD Region"),
  WeightedGBDSuperRegion %>% mutate(Category = "GBD Super Region"),
  WeightedGlobal %>% mutate(Category = "Global"),
  WeightedSDGRegion %>% mutate(Category = "SDG Region"),
  WeightedWHOIncomeRegion %>% mutate(Category = "WHO Income Region"),
  WeightedWHORegion %>% mutate(Category = "WHO Region")
)

rm(WeightedCountry,WeightedGBDRegion,WeightedGBDSuperRegion,
   WeightedGlobal,WeightedSDGRegion,WeightedWHOIncomeRegion,WeightedWHORegion)

load("data-raw/Exposures/WeightedCountryExposures_Changes.RData")
load("data-raw/Exposures/WeightedGBDRegionExposures_Changes.RData")
load("data-raw/Exposures/WeightedGBDSuperRegionExposures_Changes.RData")
load("data-raw/Exposures/WeightedGlobalExposures_Changes.RData")
load("data-raw/Exposures/WeightedSDGRegionExposures_Changes.RData")
load("data-raw/Exposures/WeightedWHOIncomeRegionExposures_Changes.RData")
load("data-raw/Exposures/WeightedWHORegionExposures_Changes.RData")

weighted_exposures = rbind(
  WeightedCountry %>% mutate(Category = "Country"),
  WeightedGBDRegion %>% mutate(Category = "GBD Region"),
  WeightedGBDSuperRegion %>% mutate(Category = "GBD Super Region"),
  WeightedGlobal %>% mutate(Category = "Global"),
  WeightedSDGRegion %>% mutate(Category = "SDG Region"),
  WeightedWHOIncomeRegion %>% mutate(Category = "WHO Income Region"),
  WeightedWHORegion %>% mutate(Category = "WHO Region")
)




#################################################################
##                       Ground monitors                       ## done
#################################################################

#load("data-raw/Ground monitors/GM_dat.RData")

# MAPS

#################################################################
##                   Read Gridded prediction                   ## done
#################################################################

# Read data
load("data-raw/Gridded predictions/pred_2016.RData")
usethis::use_data(pred_2016, overwrite = TRUE)
load("data-raw/Gridded predictions/pred_2015.RData")
usethis::use_data(pred_2015, overwrite = TRUE)
load("data-raw/Gridded predictions/pred_2014.RData")
usethis::use_data(pred_2014, overwrite = TRUE)
load("data-raw/Gridded predictions/pred_2013.RData")
usethis::use_data(pred_2013, overwrite = TRUE)
load("data-raw/Gridded predictions/pred_2012.RData")
usethis::use_data(pred_2012, overwrite = TRUE)
load("data-raw/Gridded predictions/pred_2011.RData")
usethis::use_data(pred_2011, overwrite = TRUE)
# Bind data
grid_prediction = rbind(pred_2011,
                        pred_2012,
                        pred_2013,
                        pred_2014,
                        pred_2015,
                        pred_2016)
# Clear environment
rm(pred_2011,
   pred_2012,
   pred_2013,
   pred_2014,
   pred_2015,
   pred_2016)

##################################################################
##                          Shapefiles                          ## done
##################################################################

#load("data-raw/Shapefiles/shapefiles.RData")
