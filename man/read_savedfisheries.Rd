% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_savedfisheries.R
\name{read_savedfisheries}
\alias{read_savedfisheries}
\title{Read saved fishery outputs into R object}
\usage{
read_savedfisheries(dir, type)
}
\arguments{
\item{dir}{The directory of the atlantis model output, where the
default is \code{getwd()}.}

\item{type}{A variable passed to \code{read_savedsurvs} to determine the type
of survey output to be read in. Must take one of these values:
  \itemize{
    \item{survB}
    \item{survAge}
    \item{survLen}
    \item{survWtage}
    \item{survAnnAge}
    \item{survAnnWtage}
  }}
}
\description{
A function to read fishery index and composition data saved as .rds into
an R object with the same structure as the output of \code{om_species} or \code{om_comps}.
Users must enter the path where the fishery output files are stored and the type of fishery
output file to be read in.
}
\details{
\code{om_species}, \code{om_comps}, and \code{om_diet} will allow for multiple fisheries.
Users must define a fishery.name in each fishery config file which is used to name the file
that is output by each fishery function, and is then read back in to name list
output for each fishery in the saved .rds file.
}
\examples{
\dontrun{
# assuming d.name is the path where atlantisom output is stored

catchbio <- read_savedfisheries(d.name, 'Catch') # total fishery catch in tons
fish_age_comp_data <- read_savedfisheries(d.name, 'catchAge') # fishery age class composition
catchlen <- read_savedfisheries(d.name, "catchLen") # fishery length composition
fish)wtage <- read_savedfisheries(d.name, 'catchWtage') # fishery weight at age class
fish_annage_comp_data <- read_savedfisheries(d.name, 'catchAnnAge') # fishery annual age composition
fish_annage_wtage <- read_savedfisheries(d.name, 'catchAnnWtage') # fishery weight at annual age

}

}
\seealso{
Other read functions: 
\code{\link{read_savedsurvs}()}
}
\author{
Sarah Gaichas
}
\concept{read functions}
