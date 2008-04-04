\name{SpectrumBackground}
\alias{SpectrumBackground}
\encoding{latin1} 
\title{Background estimation.}
\description{
  This function calculates background spectrum from source spectrum and
  separates useful information (peaks) from useless information
(background).
}
\usage{
SpectrumBackground(y,iterations=100,decreasing=FALSE,order=c("2","4","6","8"),
        smoothing=FALSE,window=c("3","5","7","9","11","13","15"),compton=FALSE)
}
\arguments{
  \item{y}{ the vector of source spectrum }
  \item{iterations}{ maximal width of clipping window}
  \item{decreasing}{direction of change of clipping window. If
  \code{TRUE} the window is decreasing, otherwise the window is
  increasing.}
  \item{order}{order of clipping filter}
  \item{smoothing}{logical variable whether the smoothing operation
  in the estimation of background will be included}
  \item{window}{width of smoothing window}
  \item{compton}{logical variable whether the estimation of Compton edge
  (step-like feature at the peaks positions) will be included}
}  
  \value{
    Numeric vector with background profile.
}
\details{
  Method is based on Sensitive Nonlinear Iterative Peak
(SNIP) clipping algorithm.

New value in the channel \eqn{i} is calculated (in the case of
second-order clipping filter) with formula:

\deqn{v_p(i)=min\{v_{p-1}(i),(v_{p-1}(i+p)+v_{p-1}(i-p))/2\}}
	
}
\references{
  C. G Ryan et al.: SNIP, a statistics-sensitive background treatment
  for the quantitative analysis of PIXE spectra in geoscience
  applications. NIM, B34 (1988), 396-402.

  M. Morhác, J. Kliman, V. Matoucek, M. Veselský, I. Turzo.:
  Background elimination methods for multidimensional gamma-ray
  spectra. NIM, A401 (1997) 113-132.

  D. D. Burgess, R. J. Tervo: Background estimation for gamma-ray
  spectroscopy. NIM 214 (1983), 431-434.
  
  
}
\seealso{
}
\examples{
}
\author{ Miroslav Morhác }
\keyword{}
