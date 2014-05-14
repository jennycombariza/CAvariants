docabasic <-
function (xo,mi,mj) 
{
n<-sum(xo)
 x <- xo/n
rsums <- as.vector(rowSums(x))
csums <- as.vector(colSums(x))
dj<-diag(csums)
di<-diag(rsums)
drm1 <- diag( 1/( rsums + (rsums==0) ) * (1-(rsums==0)) )
dcm1 <- diag( 1/( csums + (csums==0) ) * (1-(csums==0)) )
drmh <- sqrt(drm1)
dcmh <- sqrt(dcm1)
ratio <- drmh %*% ( x - rsums %*% t(csums) ) %*% dcmh*sqrt(n)
R <- drm1 %*% x
C <- dcm1 %*% t(x)
    rmax <- min(dim(xo)) - 1
    Bpoly <- emerson.poly(mj, csums)
    Bpoly2 <- sqrt(dj) %*% Bpoly
    Apoly <- emerson.poly(mi, rsums)
    Apoly2 <- (di) %*% Apoly
    Z <- t(Apoly2) %*%solve(di) %*% (ratio) %*% (dj) %*% (Bpoly) #useful to check coordinates
    ZZ <- Z^2
    pi <- (Apoly) %*% Z %*% t(Bpoly)
    ZtZ <- Z%*%t(Z)
    tZZ <-t(Z)%*%Z 
mu<-diag(ZtZ) 
m2<-diag(tZZ)
r <- sum(mu > 1e-15)
#browser()
doca<- new("cabasicresults",
RX=R,CX=C,Cweights=drmh,Rweights=dcmh,Raxes= Bpoly,
Caxes=Apoly,r=r,mu=mu,mu2=diag(tZZ),tau=0,tauDen=0,catype="DOCA",Z=Z,ZtZ=ZtZ,tZZ=tZZ)
}
