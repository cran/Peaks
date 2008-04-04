\name{SpectrumDeconvolution}
\alias{SpectrumDeconvolution}
\encoding{latin1} 
\title{Improvement of the resolution in spectra, decomposition of multiplets}
\description{
  This function is used to strip-off known instrumental function from source spectrum.
  It is achieved by  deconvolution of source spectrum           
   according to response spectrum using Gold or Richardson-Lucy
   algorithms. Both methods provides less osccillating solutions than
   Fourier or VanCittert algorithms.
}
\usage{
SpectrumDeconvolution(y,response,iterations=10,repetitions=1,
                      boost=1.0,method=c("Gold","RL"))
}
\arguments{
  \item{y}{numeric vector of source spectrum}
  
 \item{response}{vector of response spectrum. Its length shold be less
   or equal the length of \code{y}}

 \item{iterations}{  number of iterations (parameter L in the Gold
     deconvolution algorithm) between boosting operations}
 \item{repetitions}{ number of repetitions of boosting operations. It
     must be greater or equal to one. So the total number of iterations
     is \code{repetitions*iterations}}                
 \item{boost}{boosting coefficient/exponent. Applies only if \code{repetitions}
     is greater than one. Recommended range [1..2].}
 \item{method}{method selected for deconvolution. Either Gold or
     Richardson-Lucy }
}
\value{
Numeric vector of the same length as \code{y} with deconvoluted spectrum.
}
\details{
  Both methods search iteratively for solution of deconvolution problem
  \deqn{y(i)=\sum_{j=1}^{n}h(i-j)x(j)+e(i)} in the form
  
\deqn{x^{(k)}(i)=M^{(k)}(i)x^{(k-1)}(i)}

For Gold method:

\deqn{M^{(k)}(i)=\frac{x^{(k-1)}(i)}{\sum_{j=1}^{n}h(i-j)x^{(k-1)}(j)}}

  For Richardson-Lucy:
  
  \deqn{M^{(k)}(i)=\sum_{l=0}^{n}h(i-l)\frac{x^{(k-1)}(l)}{\sum_{j=1}^{n}h(l-j) x^{(k-1)}(j)}}

    Boosting is the exponentiation of iterated value with boosting
    coefficient/exponent. It is generally improve stability.
  

}
\references{
Abreu M.C. et al., A four-dimensional deconvolution method to correct
NA38 experimental data, NIM A 405 (1998) 139.


Lucy L.B., A.J. 79 (1974) 745.

Richardson W.H., J. Opt. Soc. Am. 62 (1972) 55.

Gold R., ANL-6984, Argonne National Laboratories, Argonne Ill, 1964.

Coote G.E., Iterative smoothing and deconvolution of one- and
two-dimensional elemental distribution data, NIM B 130 (1997) 118.


M. Morhác, J. Kliman, V. Matousek, M. Veselský, I. Turzo.:
Efficient one- and two-dimensional Gold deconvolution and its
application to gamma-ray spectra decomposition. NIM, A401 (1997)
385-408.


Morhác M., Matousek V., Kliman J., Efficient algorithm of
multidimensional deconvolution and its application to nuclear data
processing, Digital Signal Processing 13 (2003) 144.


 
}
\seealso{
}
\examples{
}
\author{Miroslav Morhác}
\keyword{}
