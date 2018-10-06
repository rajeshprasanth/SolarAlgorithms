PROGRAM solar
	!IMPLICIT NONE
	INTEGER :: month=10,day=16
	INTEGER :: daynumber,daynum
	REAL :: dayangle,dayang
	
	daynumber = daynum(month,day)
	dayangle = dayang(daynumber)
	write(*,*)'Day Number # ',daynumber
	write(*,*)'Day Angle ::',dayangle
	



END PROGRAM solar
