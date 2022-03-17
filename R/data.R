#' @title Concentrations Exposure Data
#' @description Contains yearly pm2.5 measurements for countries and regions
#' @format A data frame with 10123 rows and 10 variables:
#' \describe{
#'   \item{\code{byvar}}{character }
#'   \item{\code{LowerCI}}{double }
#'   \item{\code{UpperCI}}{double }
#'   \item{\code{Mean}}{double }
#'   \item{\code{Median}}{double }
#'   \item{\code{LowerPI}}{double }
#'   \item{\code{UpperPI}}{double }
#'   \item{\code{Year}}{character }
#'   \item{\code{UrbanRural}}{character }
#'   \item{\code{name}}{character }
#'}
#' @details For further details, see \url{https://www.who.int/data/gho/data/themes/air-pollution/who-modelled-estimates-of-air-pollution-from-particulate-matter}
"concentrations_unweighted_exposures"

#' @title Global Exceedance Data
#' @description Contains yearly pm2.5 exceedance at 10,15,25.30 scale
#' @format A data frame with 23548 rows and 6 variables:
#' \describe{
#'   \item{\code{ID}}{character }
#'   \item{\code{UrbanRural}}{character }
#'   \item{\code{Category}}{character }
#'   \item{\code{Year}}{double }
#'   \item{\code{Value}}{double }
#'   \item{\code{Scale}}{double }
#'}
#' @details For further details, see \url{https://www.who.int/data/gho/data/themes/air-pollution/who-modelled-estimates-of-air-pollution-from-particulate-matter}
"exceed"

#' @title Ground monitor Data
#' @description Contains yearly measurements from global ground monitor sites
#' @format A data frame with 34877 rows and 31 variables:
#' \describe{
#'   \item{\code{ID}}{integer }
#'   \item{\code{StationID}}{character }
#'   \item{\code{ISO3}}{character }
#'   \item{\code{CountryName}}{character }
#'   \item{\code{CountryCode}}{double }
#'   \item{\code{Year}}{integer }
#'   \item{\code{PM25}}{double }
#'   \item{\code{PM10}}{double }
#'   \item{\code{PM25PercCoverage}}{double }
#'   \item{\code{PM10PercCoverage}}{double }
#'   \item{\code{PM25Grading}}{integer }
#'   \item{\code{PM10Grading}}{integer }
#'   \item{\code{Longitude}}{double }
#'   \item{\code{Latitude}}{double }
#'   \item{\code{MonitorType}}{character }
#'   \item{\code{UnspecifiedType}}{integer }
#'   \item{\code{ApproxLoc}}{integer }
#'   \item{\code{PM25Conv}}{integer }
#'   \item{\code{IDGRID}}{double }
#'   \item{\code{SAT}}{double }
#'   \item{\code{DUST}}{double }
#'   \item{\code{SANOC}}{double }
#'   \item{\code{POP}}{double }
#'   \item{\code{ELEVATION}}{double }
#'   \item{\code{ELEVDIFFALTD}}{double }
#'   \item{\code{GBDRegion}}{character }
#'   \item{\code{GBDSuperRegion}}{character }
#'   \item{\code{WHORegion}}{character }
#'   \item{\code{WHOIncomeRegion}}{character }
#'   \item{\code{PredMethod}}{character }
#'   \item{\code{ConvFactor}}{double }
#'}
#' @details For further details, see \url{https://www.who.int/data/gho/data/themes/air-pollution/who-modelled-estimates-of-air-pollution-from-particulate-matter}
"ground_monitors"

#' @title Population Weighted Concentrations
#' @description Contains yearly pm2.5 concerntraions based on population weighting
#' @format A data frame with 10383 rows and 11 variables:
#' \describe{
#'   \item{\code{byvar}}{character }
#'   \item{\code{LowerCI}}{double }
#'   \item{\code{UpperCI}}{double }
#'   \item{\code{Mean}}{double }
#'   \item{\code{Median}}{double }
#'   \item{\code{LowerPI}}{double }
#'   \item{\code{UpperPI}}{double }
#'   \item{\code{Year}}{character }
#'   \item{\code{UrbanRural}}{character }
#'   \item{\code{Type}}{character }
#'   \item{\code{Category}}{character }
#'}
#' @details For further details, see \url{https://www.who.int/data/gho/data/themes/air-pollution/who-modelled-estimates-of-air-pollution-from-particulate-matter}
"population_weighted_concentrations"

#' @title WHO World Map SF
#' @description SF dataframe containing WHO World map boundaries
#' @format A data frame with 237 rows and 13 variables:
#' \describe{
#'   \item{\code{CNTRY_TERR}}{integer }
#'   \item{\code{SOVEREIGN}}{integer }
#'   \item{\code{ISO_3_CODE}}{integer }
#'   \item{\code{ISO_2_CODE}}{integer }
#'   \item{\code{UN_CODE}}{double }
#'   \item{\code{WHO_CODE}}{double }
#'   \item{\code{WHO_REGION}}{integer }
#'   \item{\code{WHO_STATUS}}{integer }
#'   \item{\code{LVLID}}{integer }
#'   \item{\code{Shape_Leng}}{double }
#'   \item{\code{Shape_Area}}{double }
#'   \item{\code{CountryCode}}{double }
#'   \item{\code{geometry}}{list }
#'}
#' @details For further details, see \url{https://www.who.int/data/gho/data/themes/air-pollution/who-modelled-estimates-of-air-pollution-from-particulate-matter}
"who_world_map"

#' @title Grid Prediction 2011
#' @description DIMAWQ model predictions provide estimates of annual concentrations to PM2.5 at 0.1° × 0.1° high spatial resolution, which equates to approximately 11x11km at the equator globally.
#' @format A data frame with 1445462 rows and 17 variables:
#' \describe{
#'   \item{\code{Longitude}}{double }
#'   \item{\code{Latitude}}{double }
#'   \item{\code{CountryName}}{character }
#'   \item{\code{ISO3}}{character }
#'   \item{\code{GBDRegion}}{character }
#'   \item{\code{GBDSuperRegion}}{character }
#'   \item{\code{SDGRegion}}{character }
#'   \item{\code{WHORegion}}{character }
#'   \item{\code{WHOIncomeRegion}}{character }
#'   \item{\code{POP}}{double }
#'   \item{\code{Urban}}{double }
#'   \item{\code{Mean}}{double }
#'   \item{\code{Median}}{double }
#'   \item{\code{Lower95}}{double }
#'   \item{\code{Upper95}}{double }
#'   \item{\code{StdDev}}{double }
#'   \item{\code{Year}}{double }
#'}
#' @details For further details, see \url{https://www.who.int/data/gho/data/themes/air-pollution/who-modelled-estimates-of-air-pollution-from-particulate-matter}
"pred_2011"

#' @title Grid Prediction 2012
#' @description DIMAWQ model predictions provide estimates of annual concentrations to PM2.5 at 0.1° × 0.1° high spatial resolution, which equates to approximately 11x11km at the equator globally.
#' @format A data frame with 1445462 rows and 17 variables:
#' \describe{
#'   \item{\code{Longitude}}{double }
#'   \item{\code{Latitude}}{double }
#'   \item{\code{CountryName}}{character }
#'   \item{\code{ISO3}}{character }
#'   \item{\code{GBDRegion}}{character }
#'   \item{\code{GBDSuperRegion}}{character }
#'   \item{\code{SDGRegion}}{character }
#'   \item{\code{WHORegion}}{character }
#'   \item{\code{WHOIncomeRegion}}{character }
#'   \item{\code{POP}}{double }
#'   \item{\code{Urban}}{double }
#'   \item{\code{Mean}}{double }
#'   \item{\code{Median}}{double }
#'   \item{\code{Lower95}}{double }
#'   \item{\code{Upper95}}{double }
#'   \item{\code{StdDev}}{double }
#'   \item{\code{Year}}{double }
#'}
#' @details For further details, see \url{https://www.who.int/data/gho/data/themes/air-pollution/who-modelled-estimates-of-air-pollution-from-particulate-matter}
"pred_2012"

#' @title Grid Prediction 2013
#' @description DIMAWQ model predictions provide estimates of annual concentrations to PM2.5 at 0.1° × 0.1° high spatial resolution, which equates to approximately 11x11km at the equator globally.
#' @format A data frame with 1445462 rows and 17 variables:
#' \describe{
#'   \item{\code{Longitude}}{double }
#'   \item{\code{Latitude}}{double }
#'   \item{\code{CountryName}}{character }
#'   \item{\code{ISO3}}{character }
#'   \item{\code{GBDRegion}}{character }
#'   \item{\code{GBDSuperRegion}}{character }
#'   \item{\code{SDGRegion}}{character }
#'   \item{\code{WHORegion}}{character }
#'   \item{\code{WHOIncomeRegion}}{character }
#'   \item{\code{POP}}{double }
#'   \item{\code{Urban}}{double }
#'   \item{\code{Mean}}{double }
#'   \item{\code{Median}}{double }
#'   \item{\code{Lower95}}{double }
#'   \item{\code{Upper95}}{double }
#'   \item{\code{StdDev}}{double }
#'   \item{\code{Year}}{double }
#'}
#' @details For further details, see \url{https://www.who.int/data/gho/data/themes/air-pollution/who-modelled-estimates-of-air-pollution-from-particulate-matter}
"pred_2013"

#' @title Grid Prediction 2014
#' @description DIMAWQ model predictions provide estimates of annual concentrations to PM2.5 at 0.1° × 0.1° high spatial resolution, which equates to approximately 11x11km at the equator globally.
#' @format A data frame with 1445462 rows and 17 variables:
#' \describe{
#'   \item{\code{Longitude}}{double }
#'   \item{\code{Latitude}}{double }
#'   \item{\code{CountryName}}{character }
#'   \item{\code{ISO3}}{character }
#'   \item{\code{GBDRegion}}{character }
#'   \item{\code{GBDSuperRegion}}{character }
#'   \item{\code{SDGRegion}}{character }
#'   \item{\code{WHORegion}}{character }
#'   \item{\code{WHOIncomeRegion}}{character }
#'   \item{\code{POP}}{double }
#'   \item{\code{Urban}}{double }
#'   \item{\code{Mean}}{double }
#'   \item{\code{Median}}{double }
#'   \item{\code{Lower95}}{double }
#'   \item{\code{Upper95}}{double }
#'   \item{\code{StdDev}}{double }
#'   \item{\code{Year}}{double }
#'}
#' @details For further details, see \url{https://www.who.int/data/gho/data/themes/air-pollution/who-modelled-estimates-of-air-pollution-from-particulate-matter}
"pred_2014"

#' @title Grid Prediction 2015
#' @description DIMAWQ model predictions provide estimates of annual concentrations to PM2.5 at 0.1° × 0.1° high spatial resolution, which equates to approximately 11x11km at the equator globally.
#' @format A data frame with 1445462 rows and 17 variables:
#' \describe{
#'   \item{\code{Longitude}}{double }
#'   \item{\code{Latitude}}{double }
#'   \item{\code{CountryName}}{character }
#'   \item{\code{ISO3}}{character }
#'   \item{\code{GBDRegion}}{character }
#'   \item{\code{GBDSuperRegion}}{character }
#'   \item{\code{SDGRegion}}{character }
#'   \item{\code{WHORegion}}{character }
#'   \item{\code{WHOIncomeRegion}}{character }
#'   \item{\code{POP}}{double }
#'   \item{\code{Urban}}{double }
#'   \item{\code{Mean}}{double }
#'   \item{\code{Median}}{double }
#'   \item{\code{Lower95}}{double }
#'   \item{\code{Upper95}}{double }
#'   \item{\code{StdDev}}{double }
#'   \item{\code{Year}}{double }
#'}
#' @details For further details, see \url{https://www.who.int/data/gho/data/themes/air-pollution/who-modelled-estimates-of-air-pollution-from-particulate-matter}
"pred_2015"

#' @title Grid Prediction 2016
#' @description DIMAWQ model predictions provide estimates of annual concentrations to PM2.5 at 0.1° × 0.1° high spatial resolution, which equates to approximately 11x11km at the equator globally.
#' @format A data frame with 1445462 rows and 17 variables:
#' \describe{
#'   \item{\code{Longitude}}{double }
#'   \item{\code{Latitude}}{double }
#'   \item{\code{CountryName}}{character }
#'   \item{\code{ISO3}}{character }
#'   \item{\code{GBDRegion}}{character }
#'   \item{\code{GBDSuperRegion}}{character }
#'   \item{\code{SDGRegion}}{character }
#'   \item{\code{WHORegion}}{character }
#'   \item{\code{WHOIncomeRegion}}{character }
#'   \item{\code{POP}}{double }
#'   \item{\code{Urban}}{double }
#'   \item{\code{Mean}}{double }
#'   \item{\code{Median}}{double }
#'   \item{\code{Lower95}}{double }
#'   \item{\code{Upper95}}{double }
#'   \item{\code{StdDev}}{double }
#'   \item{\code{Year}}{double }
#'}
#' @details For further details, see \url{https://www.who.int/data/gho/data/themes/air-pollution/who-modelled-estimates-of-air-pollution-from-particulate-matter}
"pred_2016"


#' Join yearly grid_prediction data
#'
#' @return a dataframe with all yearly grid_prediction data
#' @export
#'
#' @examples
#' # Read all data
#' yearly_pred = pred_all()
pred_all = function(){
  rbind(pred_2011,pred_2012,pred_2013,pred_2014,pred_2015,pred_2016)
}
