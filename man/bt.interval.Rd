\name{bt.interval}
\alias{bt.interval}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Bootstapping Predictive Intervals
%%  ~~function to do ... ~~
}
\description{This function constructs 95\% predictive intervals using bootstrapping. The bootstrapping process is done using block bootstrapping, in order to account for serial correlation in the time series data. The predictive intervals then can be visualized with \code{\link{plot.BtInterval}} function.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
bt.interval(.data = NULL, boot = 100, forecast = "model")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{.data}{
an object of class "Maeforecast" returned from \code{\link{maeforecast}}.
}
  \item{boot}{number of bootstrapped versions to generate. This cannot be too small in order for the predictive intervals to be meaningful. Default is set to be \code{100}.

}
  \item{forecast}{whether the original point forecasts (\code{"model"}) should be reported or a new set of forecasts generated by bootstrapping aggregation (\code{"mean"}). Default is \code{"model"}.
}
}
\details{
This function automatically extracts the model information from the argument \code{.data}, including model type, forecasting window, window size, forecasting horizon, and so on. Users will only have to indicate the desirable number of bootstrapped versions to generate, and the function will take care of the rest.
}
\value{
This function returns an object of class "BtInterval" that contains the following components

\item{Intervals}{a 3-column matrix that contains the lower bound, point forecasts and the upper bound.}
\item{Data}{the original data matrix used in the model.}
\item{Model}{the original model information.}
\item{Bootstrapped}{all bootstrapped forecasts}
}
\references{
%% ~put references to the literature/web site here ~
}
\author{Zehua Wu
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{plot.BtInterval}}
}
\examples{


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
