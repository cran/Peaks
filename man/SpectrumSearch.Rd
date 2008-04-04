\name{SpectrumSearch}
\alias{SpectrumSearch}
\encoding{latin1} 
\title{Automatical identification of the peaks in spectrum with the presence of the continuous background and statistical fluctuations - noise}
\description{
  This function searches for peaks in source spectrum
      It is based on deconvolution method. First the background is
      removed (if desired), then Markov spectrum is calculated
      (if desired), then the response function is generated
      according to given sigma and deconvolution is carried out.
}
\usage{
SpectrumSearch(y,sigma=3.0,threshold=10.0,background=FALSE,
               iterations=13,markov=FALSE,window=3)
}
\arguments{
  \item{y}{numeric vector of source spectrum}
  \item{sigma}{sigma of searched peaks}
  \item{threshold}{threshold value in \% for selected peaks, peaks with
                amplitude less than \code{threshold*highest_peak/100}
                are ignored}
  \item{background}{Remove background. Logical variable, set to \code{TRUE} if the removal of
                background before deconvolution is desired}
  \item{iterations}{number of iterations in deconvolution operation}
  \item{markov}{logical variable, if it is \code{TRUE}, first the source spectrum
             is replaced by new spectrum calculated using Markov
             chains method.}
   \item{window}{averanging window of searched peaks, applies only for Markov smoothing}
}
\value{
  List with two vectors:
  \item{y}{Deconvoluted source vector}
  \item{pos}{Indexes of found peaks in \code{y} spectrum}
}
\details{
  Algorithm is straightforward.
  The function removes background and smooths (if requested) source
  vector \code{y}, then deconvolves it using Gaussian with \code{sigma}
  as responce vector and after that searches for peaks in deconvoluted
  vector which are above \code{threshold}.
}
\references{
  M.A. Mariscotti: A method for identification of peaks in the presence
  of background and its application to spectrum analysis. NIM 50 (1967),
  309-320.

  M. Morhác, J. Kliman, V. Matousek, M. Veselský,
  I. Turzo.:Identification of peaks in multidimensional coincidence
  gamma-ray spectra. NIM, A443 (2000) 108-125.
  
  Z.K. Silagadze, A new algorithm for automatic photopeak searches. NIM
  A 376 (1996), 451.

}
\seealso{
  \code{\link[Peaks]{SpectrumSmoothMarkov}} ,
  \code{\link[Peaks]{SpectrumBackground}} , \code{\link[Peaks]{SpectrumDeconvolution}} 
}
\examples{
}
\author{Miroslav Morhác}
\keyword{}
